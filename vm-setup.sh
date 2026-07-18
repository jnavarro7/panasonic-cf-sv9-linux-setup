#!/bin/bash 

sudo apt update && sudo apt upgrade -y && sudo apt install -y build-essential dkms linux-headers-$(uname -r) virtualbox-guest-x11 virtualbox-guest-utils && sudo usermod -Ag vboxsf $USER
#sudo mkdir /mnt/my_share
#sudo mount -t vboxsf /home/$USER/Documents /mnt/my_share
