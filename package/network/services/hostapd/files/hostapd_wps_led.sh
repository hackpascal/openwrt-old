#!/bin/sh

. /lib/functions/leds.sh

IFNAME=$1
CMD=$2

PID_FILE=/var/run/hostapd_cli-$IFNAME.pid

WPS_LED=$(ls /sys/class/leds | grep -E 'qss|wps|security' | head -n 1)

[ -z "$WPS_LED" ] && exit 1

case "$CMD" in
	WPS-PBC-ACTIVE)
		led_on "$WPS_LED"
		;;
	WPS-PBC-DISABLE|CTRL-EVENT-EAP-FAILURE)
		led_set_attr "$WPS_LED" "trigger" "none"
		led_on "$WPS_LED"
		;;
	WPS-TIMEOUT|WPS-SUCCESS)
		led_off "$WPS_LED"
		kill $(cat "$PID_FILE")
		rm -f "$PID_FILE"
		exit 1
		;;
	CTRL-EVENT-EAP-STARTED)
		led_timer "$WPS_LED" 150 150
		;;
esac
