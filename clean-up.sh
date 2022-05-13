#!/bin/bash

userdel -r alarm
sed -i 's/alarm ALL=(ALL:ALL) NOPASSWD: ALL/ /g' /etc/sudoers
pacman -Rns --noconfirm calamares_current_arm calamares_config_default_arm calamares_config_ce_arm
rm -rf /etc/calamares/
cp -f /usr/lib/systemd/system/getty@.service.bak /usr/lib/systemd/system/getty@.service
rm -rf /usr/lib/systemd/system/getty@.service.bak
rm /usr/local/bin/clean-up.sh
rm /etc/systemd/system/clean-up.service

exit


