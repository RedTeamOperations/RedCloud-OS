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

######## Uninstallation of Extra Components ########
sudo apt remove --purge xboard
sudo apt autoremove
sudo apt remove --purge gimp*
sudo apt autoremove
sudo apt remove --purge chromium*
sudo apt autoremove
sudo apt remove --purge libreoffice-*
sudo apt autoremove
sudo apt remove --purge qbittorrent
sudo apt autoremove
sudo apt remove --purge vlc*
sudo apt autoremove
sudo apt remove --purge onboard*
sudo apt autoremove
sudo apt remove --purge dasher*
sudo apt autoremove
