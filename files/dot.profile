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

ls -t ~/.serverauth.* 2>/dev/null | tail -n +2 | xargs rm -f --

kbdcontrol -f 1 'startx'
kbdcontrol -f 3 'lock -np'
kbdcontrol -f 4 '/etc/rc.suspend'
kbdcontrol -f 12 'shutdown -p now'
