#!/bin/bash

sudo sh -c 'echo "\nDefaults timestamp_timeout=-1">>/etc/sudoers'


#========================= AUR ===============================

PKGS=(
'appimagelauncher'
'archlinux-appstream-data-pamac'
'brave-bin'
'czkawka-gui-bin'
'downgrade'
'dropbox'
'dupeguru'
'epson-inkjet-printer-escpr2'
'etcher-bin'
'fing'
'franz'
'freefilesync-bin'
'fslint'
'google-chrome'
'hyphen-el'
'hyphen-ro'
'ink'
'inotify-tools'
'insync'
'inxi'
'libreoffice-extension-languagetool'
'libreoffice-extension-orthos-greek-english-dictionary'
'libreoffice-extension-orthos-greek-thesaurus'
'mangohud'
'megasync'
'nomachine'
'ocs-url'
'otf-gfs-majuscule'
'otf-gfs-neohellenic-math'
'otf-gfs'
'pamac-aur'
'pamac-tray-icon-plasma'
'pygtk'
'scrcpy'
'skypeforlinux-stable-bin'
'spotify'
'synology-assistant'
'synology-drive'
'teamviewer'
'timeshift'
'tor-browser'
'ttf-droid'
'ttf-gentium-basic'
'ttf-hack'
'ttf-mac-fonts'
'ttf-mgopen'
'ttf-selawik'
'ttf-tahoma'
'update-grub'
'ventoy-bin'
'virtualbox-ext-oracle'
'wondershaper'
'xnviewmp'
'zoom'
#'lightly-git'
)


for PKG in "${PKGS[@]}"; do
    yay -S --noconfirm --needed $PKG
done

sudo sed -i "/Defaults timestamp_timeout=-1/d" /etc/sudoers