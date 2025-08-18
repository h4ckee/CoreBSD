#
# user profile (non-privileged login shells)
#

whence -p micro && export EDITOR='micro' || export EDITOR='vi'
export PAGER='less'
export TERM='xterm'
export ENV="${HOME}/.shrc"

[ -d "${HOME}/.local/bin" ] && export PATH="${HOME}/.local/bin:${PATH}"
[ -d "${HOME}/.config" ] && export XDG_CONFIG_HOME="${HOME}/.config"
