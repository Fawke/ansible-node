#!/bin/bash

set -e
cd $(dirname $0)

sudo apt-get install ansible
ansible-galaxy install -r roles.yml -p roles
ansible-playbook playbook.yml