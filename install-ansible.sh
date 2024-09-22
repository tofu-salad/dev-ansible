#!/usr/bin/env bash


# Works in Ubuntu 22.04 LTS
# Install pipx
if   ! command -v pipx > /dev/null ; then
	echo "pipx not found. installing"
	sudo apt update
	sudo apt install pipx -y
	pipx ensurepath
	pipx install --include-deps ansible --force
	pipx inject ansible argcomplete

else 
	echo "pipx and ansible already installed"
fi

# Install Ansible
