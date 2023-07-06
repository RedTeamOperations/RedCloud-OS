#!/bin/bash

######## FIRST CHECK ########
# Must be root to install
echo "[+]"
if [[ $EUID -eq 0 ]];then
    echo "[+] You are root."
else
    echo "[+] sudo will be used for the install."
    # Check if it is actually installed
    # If it isn't, exit because the install cannot complete
    if [[ $(dpkg-query -s sudo) ]];then
        export SUDO="sudo"
        export SUDOE="sudo -E"
    else
        echo "[-] Please install sudo or run this as root."
        exit 1
    fi
fi

######## Freezing icon themes ########
sudo apt-mark hold adwaita-icon-theme
sudo apt-mark hold ara-icon-theme
sudo apt-mark hold breeze-cursor-theme
sudo apt-mark hold breeze-gtk-theme
sudo apt-mark hold gnome-accessibility-themes
sudo apt-mark hold gnome-icon-theme
sudo apt-mark hold gnome-themes-extra-data
sudo apt-mark hold gnome-themes-extra
sudo apt-mark hold hackthebox-icon-theme
sudo apt-mark hold hicolor-icon-theme
sudo apt-mark hold maia-icon-theme
sudo apt-mark hold mate-icon-theme
sudo apt-mark hold mate-themes
sudo apt-mark hold parrot-themes
sudo apt-mark hold qt5-gtk-platformtheme
sudo apt-mark hold sound-theme-freedesktop
sudo apt-mark hold win10-icon-theme
