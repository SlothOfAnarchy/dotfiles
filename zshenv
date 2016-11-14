#
# Executes commands at ZSH startup
#

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "$HOME/.zprofile" ]]; then
	source "$HOME/.zprofile"
fi

export EDITOR='vim'
export VISUAL='vim'
export PAGER='vimpager'
path+="$HOME/bin"
path+="$HOME/.vim/plugged/vimpager"
umask 027

readonly PATH
export PATH
