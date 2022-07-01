# Tell bash where to find config

export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:=${HOME}/.config}
export XDG_DATA_HOME=${XDG_CONFIG_HOME:=${HOME}/.local/share}

export BASH_CONFIG=${BASH_CONFIG:=${XDG_CONFIG_HOME}/bash}
source $BASH_CONFIG/rc

# vim:ft=bash
