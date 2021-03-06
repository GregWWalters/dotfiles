.dotfiles.git
=============

[reference](https://www.atlassian.com/git/tutorials/dotfiles)

This repository allows me to track my configuration files in git without
screwing things up by having a .git folder in my home directory. By use of an
alias, I can run git commands against this side directory and still treat my
home directory as the work tree. Various configurations are included as submodules.

It was initialized with

```sh
git init --bare $HOME/.dotfiles
alias cfg='/usr/bin/env git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME'
cfg config --local status.showUntrackedFiles no
```

To clone it to a new system, run:

```sh
alias cfg='/usr/bin/env git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME'
git clone --recurse-submodules git@github.com:GregWWalters/dotfiles.git $HOME/.dotfiles.git
cfg submodule init
cfg submodule update
cfg checkout
cfg config --local status.showUntrackedFiles no
```

or (for completeness) run this script:

```sh
git clone --recurse-submodules git@github.com:GregWWalters/dotfiles.git $HOME/.dotfiles.git

function cfg {
   /usr/bin/env git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME $@
}

cfg submodule init
cfg submodule update
cfg checkout
if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Backing up pre-existing dot files.";
    mkdir -p .dotfiles-backup
    cfg checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .dotfiles-backup/{}
  cfg checkout
fi;

cfg config status.showUntrackedFiles no
```

