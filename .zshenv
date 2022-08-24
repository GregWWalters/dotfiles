# .zshenv is sourced every time and is good for non-interactive settings
# like PATH. Do not set your prompt here! It's completely unnecessary for
# non-interactive shells and will be overwritten by files sourced after this.
#
# If using a directory other than $HOME for the other ZSH config files,
# ZDOTDIR can be set here.

export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:=$HOME/.config}
SH_CFG_DIR="${SH_CFG_DIR:=${XDG_CONFIG_HOME}/sh}"

if [ -d "$XDG_CONFIG_HOME/zsh" ]; then export ZDOTDIR="$XDG_CONFIG_HOME/zsh"; fi

if [ -s "$ZDOTDIR/zshenv" ]; then
	source "$ZDOTDIR/zshenv"
elif [ -s "$SH_CFG_DIR/profile" ]; then
	source "$SH_CFG_DIR/profile"
elif [ -s "$HOME/.profile" ]; then
	source "$HOME/.profile"
fi

