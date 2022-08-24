# Redirect to XDG_CONFIG_HOME/sh/profile

XDG_CONFIG_HOME="${XDG_CONFIG_HOME:=$HOME/.config}"
SH_CFG_DIR="${SH_CFG_DIR:=$XDG_CONFIG_HOME/sh}"
if [ -s "${SH_CFG_DIR}/profile" ]; then . "${SH_CFG_DIR}/profile"; fi

# vim:ft=sh
