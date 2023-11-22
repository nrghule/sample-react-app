#!/bin/bash
echo installing dependencies
sudo apt-get update
sudo apt-get install apache2 -y
curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install nodejs -y
sudo apt-get -y install npm

cd /var/www/html
sudo rm -rf *
sudo mkdir /app
cd /app

sudo npm i
sudo npm run build
sudo cp -r /app/build/. /var/www/html
