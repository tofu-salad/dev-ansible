#!/usr/bin/env bash


# Works in Ubuntu 22.04 LTS
# Install pipx
sudo apt update
sudo apt install pipx -y
pipx ensurepath

# Install Ansible
pipx install --include-deps ansible --force
pipx inject ansible argcomplete
