#!/bin/sh
if [ "$(id -u)" -eq 0 ]; then
  chmod -x /etc/update-motd.d/30-armbian-sysinfo >/dev/null 2>&1
  chmod +x /etc/update-motd.d/30-armbian-sysinfo-adv >/dev/null 2>&1
  echo "The default MOTD Armbian system information was disabled and replaced by the advanced version."
else
  echo "Beware, you have to run this script as root (sudo)!"
fi