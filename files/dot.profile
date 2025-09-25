#
# user profile (non-privileged login shells)
#

[ -d "${HOME}/.local/bin" ] && export PATH="${HOME}/.local/bin:${PATH}"
[ -d "${HOME}/.config" ] && export XDG_CONFIG_HOME="${HOME}/.config"

if whence -p micro > /dev/null; then
	export EDITOR='micro'
else
	export EDITOR='vi'
fi
export PAGER='less'
export ENV="${HOME}/.shrc"
