#!/bin/sh
if [ "$(id -u)" -eq 0 ]; then
  systemctl enable smartd >/dev/null 2>&1
  systemctl start smartd >/dev/null 2>&1
  echo "The smartd service was enabled and started."
else
  echo "Beware, you have to run this script as root (sudo)!"
fi