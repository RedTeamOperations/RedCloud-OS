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

######## Installation of Extra Components ########
sudo apt-get install libpython3.9-dev
sudo apt-get install python3-pip
sudo apt-get install ca-certificates
sudo apt-get install curl
sudo apt-get install apt-transport-https
sudo apt-get install wget
sudo apt-get install lsb-release
sudo apt-get install gnupg
sudo apt-get install sqlite3
sudo apt-get install expect
sudo apt-get install python3.9-venv
sudo apt-get install git
sudo apt-get install postgresql
sudo apt-get install unzip
sudo apt-get install build-essential
sudo apt-get install openjdk-17-jdk
sudo apt-get install openjdk-17-jre
curl https://sh.rustup.rs -sSf | sh
sudo apt install jq
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - &&\ sudo apt-get install -y nodejs
sudo apt-get install nodejs
