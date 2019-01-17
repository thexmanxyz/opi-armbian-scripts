#!/bin/sh
if [ "$(id -u)" -eq 0 ]; then
  systemctl enable mongodb >/dev/null 2>&1
  systemctl start mongodb >/dev/null 2>&1
  echo "The mongodb service was enabled and started."
  if [ ${1:-1} = "1" ]; then
    echo "Status:" "$(sudo systemctl status mongodb | grep Active | sed -e 's/^[ \t]*//')"
  fi
else
  echo "Beware, you have to run this script as root (sudo)!"
fi