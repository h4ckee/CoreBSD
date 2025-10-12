#!/bin/sh
#
# Suspend the system using ACPI
#

[ "$(pgrep -aof $0)" != "$$" ] && exit 1
logger -t ACPI suspend at $(date +'%Y%m%d %H:%M:%S')
sync && sync && sync
sleep 3
exec /usr/sbin/acpiconf -s 3
exit 1
