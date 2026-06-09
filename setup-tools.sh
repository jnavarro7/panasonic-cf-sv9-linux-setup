#!/bin/bash 

# set -ex 

eda-tools() {
    echo "Installing CAD/EDA tools"
    # Installing KiCad 10
    sudo add-apt-repository ppa:kicad/kicad-10.0-releases
    sudo apt update && sudo apt install --install-recommends kicad -y && sudo apt install kicad-libraries -y
}

container-tools() {
    sudo apt install podman -y
}

system-monitoring() {
    echo "Installing system monitoring tools"
    sudo apt install htop btm -y
}

browsers() {
    echo "Installing internet browsers"
    sudo snap install brave
    sudo snap install chromium
}

dev-tools() {
    echo "Installing development tools"
    sudo apt install build-essential vim
    sudo snap install code --classic
    wget -qO - https://mirror.mwt.me/shiftkey-desktop/gpgkey | gpg --dearmor | sudo tee /usr/share/keyrings/mwt-desktop.gpg > /dev/null
    sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/mwt-desktop.gpg] https://mirror.mwt.me/shiftkey-desktop/deb/ any main" > /etc/apt/sources.list.d/mwt-desktop.list'
    sudo apt update && sudo apt install github-desktop
}

terminal-emulators() {
    sudo apt update && sudo apt install terminator -y
}

udpate() {
    sudo apt update
}

upgrade() {
    sudo apt upgrade -y
}

full-upgrade() {
    sudo apt full-upgrade -y
}
autoremove() {
    sudo apt autoremove -y
}

synergy() {
    echo "Placeholder to install Synergy 3"
}

video-tools() {
    echo "Installing ffmpeg used to test the facial recognition camera to use with howdy"
    sudo apt install ffmpeg -y
}

hardware() {
    echo "Installing howdy to use the facial recognition"
    sudo add-apt-repository ppa:ubuntuhandbook1/howdy
    sudo apt install howdy v4l-utils -y
    v4l2-ctl --list-devices
    # sudo howdy config
    # sudo howdy add
    # sudo nano /etc/pam.d/gdm-password

}

remote-desktop() {
    # RDP remote desktop client
    sudo apt install remmina-plugin-rdp -y
}

virtualization() {
    # Oracle VirtualBox
    sudo apt install virtualbox -y
}

openssh-server() {
    sudo apt install openssh-server
    sudo systemctl enable --now ssh
}

ai-agents() {
    # OpenClaw
    curl -fsSL https://openclaw.ai/install.sh | bash
    # Hermes Agent
    curl -fsSL https://hermes-agent.nousresearch.com/install.sh | bash
}

ui-control() {
    sudo apt install wmctrl xdotool
}

# Main 
update
upgrade
full-upgrade
autoremove
terminal-emulators
system-monitoring
browsers
eda-tools
container-tools
dev-tools
video-tools
# synergy
video-tools
hardware
remote-desktop
virtualization
update
upgrade
autoremove
openssh-server
ai-agents
ui-control

