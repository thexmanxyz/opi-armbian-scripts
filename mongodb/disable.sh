#!/bin/sh
if [ "$(id -u)" -eq 0 ]; then
  systemctl disable mongodb >/dev/null 2>&1
  systemctl stop mongodb >/dev/null 2>&1
  systemctl reset-failed
  echo "The mongodb service was stopped and disabled."
  if [ ${1:-1} = "1" ]; then
    echo "Status:" "$(sudo systemctl status mongodb | grep Active | sed -e 's/^[ \t]*//')"
  fi
else
  echo "Beware, you have to run this script as root (sudo)!"
fi