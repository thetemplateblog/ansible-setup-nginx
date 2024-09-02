#!/bin/bash

# Update package list and install Ansible
if [ -x "$(command -v apt-get)" ]; then
    # For Ubuntu/Debian
    sudo apt update
    sudo apt install -y software-properties-common
    sudo add-apt-repository --yes --update ppa:ansible/ansible
    sudo apt install -y ansible
elif [ -x "$(command -v yum)" ]; then
    # For CentOS/RHEL
    sudo yum install -y epel-release
    sudo yum install -y ansible
elif [ -x "$(command -v dnf)" ]; then
    # For Fedora
    sudo dnf install -y epel-release
    sudo dnf install -y ansible
elif [ -x "$(command -v brew)" ]; then
    # For macOS with Homebrew
    brew install ansible
elif [ -x "$(command -v pip3)" ]; then
    # For systems with pip3
    pip3 install ansible
else
    echo "Package manager not supported. Please install Ansible manually."
    exit 1
fi

# Verify Ansible installation
ansible --version

echo "Ansible has been installed successfully!"
