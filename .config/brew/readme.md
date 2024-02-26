`Homebrew config`
=================

The files contained herein are maintained to aid in setting up a new MacOS
install and providing lists of packages to install via Homebrew.

brew-leaves.txt
---------------

The brew-leaves.txt file contains packages installed by user request sans
dependencies and is generated with the command

```sh
brew leaves --installed-on-request
```

brew-casks.txt
--------------

The brew-casks.txt file contains casks installed and is generated with the
command

```sh
brew ls --casks
```

