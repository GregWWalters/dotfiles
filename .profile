# Redirect to XDG_CONFIG_HOME/sh/profile

# Set config dir
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:=${HOME}/.config}"
export XDG_DATA_HOME=${XDG_CONFIG_HOME:=${HOME}/.local/share}

SH_CONFIG="${XDG_CONFIG_HOME}/sh"
if [ -s "${SH_CONFIG}/profile" ]; source "${SH_CONFIG}/profile"; fi

# vim:ft=sh
