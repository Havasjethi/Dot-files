#!/bin/bash

# Note: this assumes baseline from /opt - NodeJs, and stuff
# TODO :: Upgrade this script

# Adding Wezterm
curl -fsSL https://apt.fury.io/wez/gpg.key | sudo gpg --yes --dearmor -o /usr/share/keyrings/wezterm-fury.gpg
echo 'deb [signed-by=/usr/share/keyrings/wezterm-fury.gpg] https://apt.fury.io/wez/ * *' | sudo tee /etc/apt/sources.list.d/wezterm.list
sudo chmod 644 /usr/share/keyrings/wezterm-fury.gpg

# Adding Docker(Engine)
## Add Docker's official GPG key:
sudo get update
sudo get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

## Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update
sudo apt upgrade
sudo snap refresh

# Main install section
sudo apt install -y build-essential gcc git fish curl htop wezterm \
  docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Docker post install
sudo groupadd docker
echo "Adding $USER to docker group"
sudo usermod -aG docker $USER
newgrp docker

function install_work_related {
  sudo snap install mattermost-desktop

  sudo sh -c "echo 'deb [signed-by=/usr/share/postgresql-common/pgdg/apt.postgresql.org.asc] https://apt.postgresql.org/pub/repos/apt $VERSION_CODENAME-pgdg main' > /etc/apt/sources.list.d/pgdg.list"
  # Update the package lists:
  sudo apt update
  sudo apt install postgresql-client-16
}

install_work_related
