#!/bin/sh
if [ "$(id -u)" -eq 0 ]; then
  systemctl disable mongodb >/dev/null 2>&1
  systemctl stop mongodb >/dev/null 2>&1
  echo "The mongodb service was stopped and disabled."
else
  echo "Beware, you have to run this script as root (sudo)!"
fi