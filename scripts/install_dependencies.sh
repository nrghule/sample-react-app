#!/bin/bash
echo installing dependencies
sudo apt-get update
sudo apt-get install apache2 -y
curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install nodejs -y
sudo apt-get -y install npm
