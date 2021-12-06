#!/bin/bash
sudo pacman -S --needed --noconfirm samba smbclient cifs-utils
sudo pacman -S --needed --noconfirm avahi nss-mdns
sudo groupadd -f sambashare
sudo smbpasswd -a $USER
sudo gpasswd sambashare -a $USER
sudo cp -f smb.conf /etc/samba/
sudo cp -f nsswitch.conf /etc
sudo systemctl enable smb
sudo systemctl enable nmb
sudo systemctl start smb
sudo systemctl start nmb
sudo systemctl enable avahi-daemon.service
sudo systemctl start avahi-daemon.service

