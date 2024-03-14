if [ -z "$MACOS_LOADED" ]; then
	export MACOS_LOADED=1;

	export MACOS_CFG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/macos}"

	# Set Path
	[ -s "${MACOS_CFG_DR}/path" ] && . "${MACOS_CFG_DR}/path"

	# Load environment variables
	[ -s "${MACOS_CFG_DR}/env" ] && . "${MACOS_CFG_DR}/env"

	# Scripts
	[ -s "${MACOS_CFG_DR}/scripts" ] && . "${MACOS_CFG_DR}/scripts"

	# Aliases
	[ -s "${MACOS_CFG_DR}/aliases" ] && . "${MACOS_CFG_DR}/aliases"

	# Functions
	[ -s "${MACOS_CFG_DR}/functions" ] && . "${MACOS_CFG_DR}/functions"

fi

# vim:ft=sh
