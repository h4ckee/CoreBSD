#
# user profile (non-privileged login shells)
#

[ -d ~/.local/bin ] && export PATH=~/.local/bin:"$PATH"
[ -d ~/.config ] && export XDG_CONFIG_HOME=~/.config

if whence -p micro > /dev/null; then
	export EDITOR=micro
else
	export EDITOR=vi
fi
export PAGER=less
export ENV=~/.shrc

rm -f ~/.serverauth.*
