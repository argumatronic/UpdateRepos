# UpdateRepos [![Build Status](https://travis-ci.org/pedrovgs/UpdateRepos.svg?branch=master)](https://travis-ci.org/pedrovgs/UpdateRepos)

A command line tool used to update all your git repositories with just one command. Written using purely functional Haskell.

<img alt="Follow me on Twitter" src="https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Haskell-Logo.svg/245px-Haskell-Logo.svg.png" height="60" width="82"/>

### Screencast:

![Screencast](./art/screencast.gif)

### Usage:

* Install ``stack`` following [this](https://docs.haskellstack.org/en/stable/install_and_upgrade/#mac-os-x) tutorial.

* Clone this repository:

```
git clone git@github.com:pedrovgs/UpdateRepos.git
cd UpdateRepos
```

* Build and install the ``update-repos`` binary file:

```
stack setup
stack build
stack install
```

* Execute the already installed binary file:

```
update-repos
```

### Contributing:

If you are going to modify the code or just review the implementation from any IDE I strongly recommend you to install [Atom](https://atom.io/) following this [guide](https://github.com/simonmichael/haskell-atom-setup) to set up the whole Haskell environment in a few minutes.

You can build this project using ``stack`` and just a bunch of commands:

```
// Open a Haskell REPL with the modules already loaded
stack ghci

// Generates the executable file associated with the project
stack build

// Installs the already generated executable file in your ~/.local/bin folder
stack install

// Clean a previous build
stack clean
```

The production code is covered covered using unit and [property based](https://en.wikipedia.org/wiki/QuickCheck) tests. If you want to build and execute the project tests you just need to install [Stack](https://docs.haskellstack.org/en/stable/README/) and execute the following command:

```
stack build --test
```

Developed By
------------

* Pedro Vicente Gómez Sánchez - <pedrovicente.gomez@gmail.com>

<a href="https://twitter.com/pedro_g_s">
  <img alt="Follow me on Twitter" src="https://image.freepik.com/iconos-gratis/twitter-logo_318-40209.jpg" height="60" width="60"/>
</a>
<a href="https://es.linkedin.com/in/pedrovgs">
  <img alt="Add me to Linkedin" src="https://image.freepik.com/iconos-gratis/boton-del-logotipo-linkedin_318-84979.png" height="60" width="60"/>
</a>

License
-------

    Copyright 2017 Pedro Vicente Gómez Sánchez

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
