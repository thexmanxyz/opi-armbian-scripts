#!/bin/sh
if [ "$(id -u)" -eq 0 ]; then
  systemctl enable smartd >/dev/null 2>&1
  systemctl start smartd >/dev/null 2>&1
  echo "The smartd service was enabled and started."
  if [ ${1:-1} = "1" ]; then
    echo "Status:" "$(sudo systemctl status smartd | grep Active | sed -e 's/^[ \t]*//')"
  fi
else
  echo "Beware, you have to run this script as root (sudo)!"
fi