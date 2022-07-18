# Tell bash where to find config

export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:=${HOME}/.config}
export XDG_DATA_HOME=${XDG_CONFIG_HOME:=${HOME}/.local/share}

export BASH_CFG_DIR=${BASH_CFG_DIR:=${XDG_CONFIG_HOME}/bash}
source $BASH_CFG_DIR/rc

# vim:ft=bash
