#!/bin/sh
if [ "$(id -u)" -eq 0 ]; then
  systemctl disable smartd >/dev/null 2>&1
  systemctl stop smartd >/dev/null 2>&1
  echo "The smartd service was stopped and disabled."
else
  echo "Beware, you have to run this script as root (sudo)!"
fi