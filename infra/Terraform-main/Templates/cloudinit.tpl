#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

sudo apt-get update -y

# Install Docker

sudo apt-get install python-pip software-properties-common -y

sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable" -y

sudo apt-get update

sudo apt-get install docker-ce -y

sudo adduser $USER docker

docker pull jenkins/jenkins:lts
