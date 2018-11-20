#!/bin/bash

sudo isve off
sudo firewall onS
dontUseResolv
sudo wifi-menu

if [[ $(whoami) == "root" ]]; then
    case $# in
	1) case $1 in
	       home) sudo firewall onS;;
	       tei) sudo pkill dhcpcd
		    sudo isve off
		    sudo chattr -i /etc/resolv.conf && sudo rm /etc/resolv.conf && sudo resolvconf -u
		    sudo
	   esac;;
	*) echo "Usage: mode MODE" 1>&2; exit 1;;
    esac
else
    echo "mode needs root privileges" 1>&2; exit 1;
fi
