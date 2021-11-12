#!/bin/bash
sudo pacman -S --needed --noconfirm samba smbclient cifs-utils
sudo pacman -S --needed --noconfirm avahi nss-mdns
sudo smbpasswd -a $USER
sudo gpasswd sambashare -a $USER
sudo systemctl enable smb
sudo systemctl enable nmb
sudo systemctl start smb
sudo systemctl start nmb
sudo systemctl enable avahi-daemon.service
sudo systemctl start avahi-daemon.service

