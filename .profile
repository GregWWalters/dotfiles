# Redirect to XDG_CONFIG_HOME/sh/profile

# Set config dir
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:=${HOME}/.config}"
export XDG_DATA_HOME="${XDG_CONFIG_HOME:=${HOME}/.local/share}"
export SH_CFG_DIR="${SH_CFG_DIR:=${XDG_CONFIG_HOME}/sh}"

if [ -s "${SH_CFG_DIR}/profile" ]; then source "${SH_CFG_DIR}/profile"; fi

# vim:ft=sh
