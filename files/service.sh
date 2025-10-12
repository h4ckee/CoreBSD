#!/bin/sh

if (( $# > 1 )); then
	script="$1"
	shift
else
	echo "usage: ${0##*/} <rc.d script> <args>"
	exit
fi

cd /
for dir in /etc/rc.d /usr/local/etc/rc.d; do
	if [ -x "$dir"/"$script" ]; then
		exec env -i -L -/daemon HOME="/" PATH="/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin" "$dir"/"$script" "$@"
	fi
done

echo >&2 "$script does not exist in /etc/rc.d or /usr/local/etc/rc.d"
exit 1
