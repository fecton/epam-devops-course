#!/bin/bash

echo "[PING]"
ansible all -m ping


echo "[UPDATE PACKAGAES]"
ansible all -m shell -a "sudo apt update -y"


echo "[INSTALLING JENKINS] - ONLY FOR MASTER AND SLAVE!"
ansible jenkins -m apt -a "name=jenkins state=installed" -b


