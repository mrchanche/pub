#!/bin/bash

# Set time options
sudo timedatectl set-local-rtc 1 --adjust-system-clock && \
sudo timedatectl && \

# Install packages
sudo apt update -y  && \
sudo apt install python3-pip micro wget curl htop openssh-server ffmpeg kdenlive mangohud psensor git flatpak ydotool ydotoold remmina remmina-plugin-rdp python3-setuptools python3-wheel timeshift dos2unix gnome-shell-extensions gnome-shell-extension-manager lxc lxc-templates bridge-utils gimp -y  && \

# Remove apt packages
sudo apt-get remove --purge "libreoffice*" transmission-gtk rhythmbox shotwell -y && \

# Create the lxc group
sudo groupadd lxc && \
# Add yourself to the group
sudo usermod -aG lxc $USER && \

# Add repo and install gpu screen recorder (Works with Radeon on Wayland)
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo && \
sudo flatpak install flathub com.dec05eba.gpu_screen_recorder && \

# Add OBS flatpak, which seems to work out of the box with wayland screen recording
flatpak install flathub com.obsproject.Studio && \

# Create gpu screen recorder bash shortcut
touch ~/gpu_screen_recorder.sh && \
echo '#!/bin/bash' > ~/gpu_screen_recorder.sh && \
echo ' ' >> ~/gpu_screen_recorder.sh && \
echo 'flatpak run com.dec05eba.gpu_screen_recorder' >> ~/gpu_screen_recorder.sh && \

# Install shotcut
sudo snap install shotcut --classic && \

# Microsoft shill
wget https://packages.microsoft.com/repos/edge/pool/main/m/microsoft-edge-stable/microsoft-edge-stable_138.0.3351.121-1_amd64.deb && \
wget https://vscode.download.prss.microsoft.com/dbazure/download/stable/7adae6a56e34cb64d08899664b814cf620465925/code_1.102.1-1752598717_amd64.deb && \
sudo apt install ./microsoft-edge-stable_138.0.3351.121-1_amd64.deb && \
sudo apt install ./code_1.102.1-1752598717_amd64.deb -y && \
rm microsoft-edge* && \
rm code_* && \

# SDR++
#wget https://github.com/AlexandreRouma/SDRPlusPlus/releases/download/nightly/sdrpp_ubuntu_noble_amd64.deb && \
#sudo apt install ./sdrpp_ubuntu_noble_amd64.deb -y && \
#rm sdrpp_ubuntu_noble_amd64.deb && \

# Remove mozilla
sudo snap remove --purge thunderbird firefox && \

# Install Ollama
#curl -fsSL https://ollama.com/install.sh | sh && \

# Download and install steam
# wget https://cdn.akamai.steamstatic.com/client/installer/steam.deb && \
# sudo apt install ./steam.deb -y && \
# Walk through updates
# rm steam* && \

# Install Atuin
bash <(curl --proto '=https' --tlsv1.2 -sSf https://setup.atuin.sh) && \

# Setup ydotool
sudo usermod -aG input $LOGNAME && \

mkdir -p /home/pcarroll/.config/autostart && \
echo 'KERNEL=="uinput", GROUP="input", MODE="0660", OPTIONS+="static_node=uinput"' | sudo tee /etc/udev/rules.d/80-uinput.rules > /dev/null && \
echo 'color-link default "[Desktop Entry]"' > /home/pcarroll/.config/autostart/ydotoold.desktop && \
echo 'color-link default "Type=Application"' >> /home/pcarroll/.config/autostart/ydotoold.desktop && \
echo 'color-link default "Terminal=false"' >> /home/pcarroll/.config/autostart/ydotoold.desktop && \
echo 'color-link default "Name=ydotool deamon"' >> /home/pcarroll/.config/autostart/ydotoold.desktop && \
echo 'color-link default "Exec=/usr/bin/ydotoold"' >> /home/pcarroll/.config/autostart/ydotoold.desktop && \
echo 'color-link default "Comment=Generic Linux command-line automation tool (no X!)."' >> /home/pcarroll/.config/autostart/ydotoold.desktop && \
echo 'color-link default "Categories=GNOME;GTK;System;"' >> /home/pcarroll/.config/autostart/ydotoold.desktop && \

# Remove any conflicting software before installing docker
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done && \

# Add Docker's official GPG key:
sudo apt-get update && \
sudo apt-get install ca-certificates curl && \
sudo install -m 0755 -d /etc/apt/keyrings && \
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc && \
sudo chmod a+r /etc/apt/keyrings/docker.asc && \

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null && \
sudo apt-get update && \

# Install docker
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin && \

# Disable Unattended Upgrades
sudo systemctl stop unattended-upgrades.service && \
sudo apt remove unattended-upgrades -y && \

# Reload Daemons
sudo systemctl daemon-reload && \

# Create snapshot
sudo timeshift --create --comments "Base Install Completed" && \

# Docker validation
sudo docker run hello-world && \

# Wrap up
echo "You will want to also perform the following:" && \
echo " " && \
echo "Add a keyboard shortcut for: 'ydotool key Insert'" && \
echo "You will also need to reboot before that will work" && \
echo " " && \
echo "Open extension manager" && \
echo "Install 'Hide Top Bar' and configure" && \
echo "Find Ubuntu Dock, edit, select 'Intelligent autohide' " && \
echo " " && \
echo "In Edge install the theme 'Complete Black Theme for Microsoft Edge'"
