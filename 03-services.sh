#!/bin/bash


#==================== SERVICES========================
clear


echo -e "\nEnabling essential services"
echo -e "\nEnabling essential services"

sudo systemctl disable systemd-networkd.service


sudo systemctl enable sddm.service
sudo systemctl enable cups.service
#ntpd -qg
#systemctl enable ntpd.service
sudo systemctl disable dhcpcd.service
sudo systemctl stop dhcpcd.service

sudo systemctl enable NetworkManager.service
sudo systemctl enable bluetooth
sudo systemctl enable teamviewerd.service
sudo systemctl start teamviewerd.service

sudo systemctl enable cronie.service
sudo systemctl start cronie.service

sudo modprobe vboxdrv
sudo usermod -aG vboxsf $USER



sudo echo "options snd_hda_intel power_save=0" | sudo tee -a /etc/modprobe.d/audio_disable_powersave.conf
