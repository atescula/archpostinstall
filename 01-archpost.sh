#!/bin/bash
sudo pacman -Syyu

sudo pacman -S --needed intel-ucode
sudo pacman -S --needed git base-devel curl wget rsync
sudo pacman -S --needed go

###### yay

rm -vrf ~/yay
cd ~/
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
rm -rf ~/yay

######

#=========================== REMOVE some stuff
sudo pacman -R --noconfirm aisleriot
sudo pacman -R --noconfirm lftp
sudo pacman -R --noconfirm grsync
sudo pacman -R --noconfirm quodlibet
sudo pacman -R --noconfirm exfalso
sudo pacman -R --noconfirm exfatprogs


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






