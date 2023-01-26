#!/bin/bash

# ALIASES
alias jenkins-plugin-cli='java -jar jenkins-cli.jar -s http://localhost:8080/ install-plugin '

# Installing Jenkins + SSH
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt update -y
sudo apt upgrade -y
sudo apt install jenkins openssh-server openjdk-8-jdk openjdk-11-jdk -y
sudo apt install -fy

sudo systemctl enable jenkins
sudo systemctl enable ssh

sudo systemctl start jenkins
sudo systemctl start ssh

# Setting up Jenkins
export Jenkins_IP=`curl http://169.254.69.254/latest/meta-data/local-ipv4`
curl "http://$Jenkins_IP:8080/jnlpJars/jenkins-cli.jar"

# Installing Plugins
# jenkins-plugin-cli configuration-as-code:1569.vb_72405b_80249

