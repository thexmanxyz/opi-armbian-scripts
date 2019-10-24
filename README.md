# OrangePi One Armbian (Maintenance) Scripts
This repository contains some useful (maintenance) scripts that I use to manage my OrangePi One server.

## Reason
Actually, none, but maybe as source / collection of scripts that could also be beneficial for others, who knows.

## Installation
1. Download the bash files or the package (and extract the included files)
2. Make the bash files executable  with `sudo chmod +x script.sh`
3. Execute `sudo ./script`

## Scripts
- **MOTD script** - easily enable or disable (reset to default) custom modifications of the MOTD output
- **Service scripts**
   - *smartd* - scripts to enable or disable the smart daemon service (prevents `systemctl` degredation state if no SMART enabled devices are attached)
   - *mongodb* - scripts to enable or disable the mongodb service (if needed otherwise waste of memory)
   
    [Optional]: Both scripts return the status of the service after execution. If you pass the first parameter with a value equal to `0` the advanced status logging will be disabled. E.g. `sudo ./service-script.sh 0`
    
- **Systemd script** - downgrade script for systemd and *Xenial 16.04.05* can be found the [respective repository](https://github.com/thexmanxyz/systemd-downgrades).

## Known Issues
* none

## by [thex](https://github.com/thexmanxyz)
Copyright (c) 2018, free to use in personal and commercial software as per the [license](/LICENSE).
