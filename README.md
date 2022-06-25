.dotfiles.git
=============

[reference](https://www.atlassian.com/git/tutorials/dotfiles)

This repository allows me to track my configuration files in git without
screwing things up by having a .git folder in my home directory. By use of an
alias, I can run git commands against this side directory and still treat my
home directory as the work tree.

It was initialized with

```sh
git init --bare $HOME/.dotfiles
alias cfg='/usr/bin/env git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME'
cfg config --local status.showUntrackedFiles no
```

To clone it to a new system, run:

```sh
alias cfg='/usr/bin/env git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME'
git clone --bare github.com/gregwwalters/dotfiles $HOME/.dotfiles.git
cfg checkout
cfg config --local status.showUntrackedFiles no
```

or (for completeness) run this script:

```sh
git clone --bare github.com/gregwwalters/dotfiles $HOME/.dotfiles.git
function cfg {
   /usr/bin/env git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME $@
}
config checkout
if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Backing up pre-existing dot files.";
    mkdir -p .dotfiles-backup
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .dotfiles-backup/{}
fi;
cfg checkout
cfg config status.showUntrackedFiles no
```

