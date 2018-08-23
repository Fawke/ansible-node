#!/bin/bash

set -e
cd $(dirname $0)

sudo apt-get update
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible
ansible-galaxy install -r roles.yml -p roles
ansible-playbook playbook.yml
