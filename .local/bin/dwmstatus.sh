#!/bin/sh

# All commands were taken from here: https://dwm.suckless.org/status_monitor/

while true; do
  xsetroot -name " $(free -h | awk '(NR==2){ print $4 }') $(df -h | awk '{ if ($6 == "/") print $4 }') $(amixer get Master | awk -F'[][]' 'END{ print $2 }') $(date +"%F %u %T") "
  sleep 2
done
