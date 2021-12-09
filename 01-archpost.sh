#!/bin/bash
export VISUAL=nano
export EDITOR=nano

#Enable multilib
sudo sed -i "/\[multilib\]/,/Include/"'s/^#//' /etc/pacman.conf

sudo pacman -Syu --noconfirm


#=========================== REMOVE some stuff
sudo pacman -R --noconfirm aisleriot
sudo pacman -R --noconfirm lftp
sudo pacman -R --noconfirm grsync
sudo pacman -R --noconfirm quodlibet
sudo pacman -R --noconfirm exfalso
sudo pacman -R --noconfirm exfatprogs
sudo pacman -R --noconfirm pulseaudio-equalizer
sudo pacman -R --noconfirm pavucontrol-qt
sudo pacman -R --noconfirm plasma-pa
sudo pacman -R --noconfirm pulseaudio-bluetooth
sudo pacman -R --noconfirm pulseaudio-alsa
sudo pacman -R --noconfirm pulseaudio-jack
sudo pacman -R --noconfirm pulseaudio

#============================ install pipewire

sudo pacman -S --needed pipewire-pulse pipewire-alsa pipewire-jack pipewire-media-session easyeffects

#========================== disable sudo timeout
sudo sh -c 'echo -e "\nDefaults timestamp_timeout=-1">>/etc/sudoers'


#========================== REPO's

echo -e "\nInstalling some fucking stuff\n"

PKGS=(
'adobe-source-code-pro-fonts'
'adobe-source-sans-fonts'
'adobe-source-serif-fonts'
'amdvlk'
'android-file-transfer'
'audiocd-kio'
'bash-completion'
'bluez-utils'
'bluez'
'clipgrab'
'cmatrix'
'code'
'digikam'
'discover'
'dvgrab'
'exfat-utils'
'filezilla'
'ffmpeg'
'ffmpegthumbs'
'fuse2'
'fuse3'
'fuseiso'
'gamemode'
'gimp'
'git'
'gparted'
'grub-customizer'
'gst-libav'
'gst-libav'
'gst-libav'
'gst-plugins-bad'
'gst-plugins-good'
'gst-plugins-good'
'gst-plugins-ugly'
'handbrake'
'haveged'
'hunspell-en_us'
'hunspell-ro'
'hunspell'
'hyphen'
'intel-media-sdk'
'jdk-openjdk'
'kaccounts-providers'
'kate'
'kcodecs'
'kcoreaddons'
'kdegraphics-thumbnailers'
'kdenlive'
'kdeplasma-addons'
'kdialog'
'kfind'
'kinfocenter'
'kio-gdrive'
'kompare'
'krusader'
'languagetool'
'lib32-mesa'
'libdvdcss'
'libdvdcss'
'libmythes'
'libreoffice-fresh'
'libva-mesa-driver'
'libva-utils'
'linux-firmware'
'linux-headers'
'linux'
'mediainfo-gui'
'mediainfo-gui'
'mediainfo'
'mesa'
'mythes-en'
'mythes-ro'
'nano'
'nfs-utils'
'nitroshare'
'nload'
'noto-fonts'
'opentimelineio'
'opentimelineio'
'packagekit-qt5'
'pacman-contrib'
'perl-image-exiftool'
'phonon-qt5-gstreamer'
'picard'
'rclone'
'recordmydesktop'
'recordmydesktop'
'sane-airscan'
'signal-desktop'
'simplescreenrecorder'
'sonnet'
'spectacle'
'speedtest-cli'
'telegram-desktop'
'terminus-font'
'thunderbird'
'ttf-caladea'
'ttf-carlito'
'ttf-dejavu'
'ttf-liberation'
'ttf-linux-libertine-g'
'ttf-ubuntu-font-family'
'vdpauinfo'
'vlc'
'vulkan-radeon'
'vulkan-tools'
'wavemon'
'xf86-video-amdgpu'
'xorg-apps'
'xorg-drivers'
'xorg-server'
'xorg-xinit'
'xorg-xkill'
'xorg'
'zeroconf-ioslave'
#'archlinux-appstream-data'
#'kde-plasma-addons'
#'vulkan'

#'virtualbox'
#'virtualbox-host-modules-arch'
#'virtualbox-guest-iso'
)
for PKG in "${PKGS[@]}"; do
    echo "Installing now: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

#========================== disable sudo timeout

sudo sed -i "/Defaults timestamp_timeout=-1/d" /etc/sudoers




