#!/bin/sh
add-apt-repository ppa:ansible/ansible -y
apt-get update
apt-get install tree

# Terraform
apt-get install unzip
wget https://releases.hashicorp.com/terraform/0.12.6/terraform_0.12.6_linux_amd64.zip
unzip terraform_0.12.6_linux_amd64.zip
mv terraform /usr/local/bin/

# pip
sudo apt-get install python-pip -y
sudo apt-get install python3-pip -y
sudo pip install boto3
sudo pip install boto 

# Ansible
sudo apt-get install ansible -y
sudo pip install awscli 

# Git
sudo apt-get install git -y

# Edit hostname on /etc/hostname