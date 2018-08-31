#!/bin/sh
set -x
iptables -t nat -A OUTPUT -p tcp --dport 80 --destination heise.de -j REDIRECT --to-ports 9191
guttle server --proxy-addr spiegel.de:80
