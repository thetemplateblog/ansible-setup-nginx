# Ansible Setup Repository

This repository provides an easy way to install Nginx and configure the virtual hosts. The setup script included in this repository automatically installs Ansible on various operating systems (Ubuntu, Debian, CentOS, RHEL, Fedora, and macOS) and verifies the installation.

## Prerequisites

Before you start, ensure that you have:

- Git installed on your machine.
- Internet access to download Ansible and its dependencies.

## SSL Config from
https://www.digitalocean.com/community/tutorials/how-to-create-a-self-signed-ssl-certificate-for-nginx-in-ubuntu

## Getting Started

### 1. Clone the Repository

First, clone this repository to your local machine:

```bash
git clone https://github.com/thetemplateblog/ansible-setup-nginx.git
cd ansible-setup-nginx
./setup.sh
sudo ansible-playbook -i localhost, -c local nginx_setup.yml

