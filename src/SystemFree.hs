module SystemFree where

import           Control.Monad.Free
import           System.Directory
import           System.Exit
import           System.Process

data SystemF x
  = IsDirectory FilePath (Bool -> x)
  | ListDirectory FilePath ([FilePath] -> x)
  | Execute String [String] ((ExitCode, String, String) -> x)

instance Functor SystemF where
  fmap f (IsDirectory path x)       = IsDirectory path (f . x)
  fmap f (ListDirectory path x)     = ListDirectory path (f . x)
  fmap f (Execute command params x) = Execute command params (f . x)

type System = Free SystemF

isDirectory' :: FilePath -> System Bool
isDirectory' path = liftF $ IsDirectory path id

listDirectory' :: FilePath -> System [FilePath]
listDirectory' path = liftF $ ListDirectory path id

execute :: String -> [String] -> System (ExitCode, String, String)
execute command params = liftF $ Execute command params id

type SystemFreeInterpreter r = System r -> IO r

run :: SystemFreeInterpreter r
run (Pure r)                    = return r
run (Free (IsDirectory path t)) = do result <- doesDirectoryExist path
                                     run $ t result
run (Free (ListDirectory path t)) = do result <- listDirectory path
                                       run $ t result
run (Free (Execute command params t)) = do result <- readProcessWithExitCode command params []
                                           run $ t result
