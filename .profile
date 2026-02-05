# Redirect to XDG_CONFIG_HOME/sh/profile

export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:=$HOME/.config}"
SH_CFG_DIR="${SH_CFG_DIR:=$XDG_CONFIG_HOME/sh}"
if [ -s "${SH_CFG_DIR}/profile" ]; then . "${SH_CFG_DIR}/profile"; fi

# vim:ft=sh


# Added by Toolbox App
export PATH="$PATH:/home/gwalt/.local/share/JetBrains/Toolbox/scripts"

. "$HOME/.cargo/env"
