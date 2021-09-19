#!/usr/bin/env sh

# Get device name from parameter
HOST="$1"

# Test if a host was supplied, exit with error if not
if [ -z "$HOST" ]; then
	HOSTS=$(uci show dhcp | grep name | cut -d"'" -f2 | sed ':a;N;$!ba;s/\n/, /g')
	echo "No valid host specified, valid options: $HOSTS"
	echo "You may also use a partial name as long as it produces a single match"
	exit 1
fi

# Get IP from hostsfile based on hostname
MAC=$(uci get dhcp."${HOST}".mac)

LAN_IF=$(uci get network.lan.device)

etherwake -D -i "$LAN_IF" "$MAC"
