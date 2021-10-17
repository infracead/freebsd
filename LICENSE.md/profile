# ~/.profile: executed by the command interpreter for login shells.
#
# Frederico Sales
# frederico.sales@uab.ufjf.br
# 2021
# CEAD - UFJF 
#

# set bash_completion.sh path
COMPLETION="/usr/local/share/bash-completion/bash_completion.sh"

# source .bashrc
if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# bash_completion
if [ -f "$COMPLETION" ]; then
    source "$COMPLETION"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ]; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ]; then
    PATH="$HOME/.local/bin:$PATH"
fi