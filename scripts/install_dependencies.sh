#!/bin/bash

# this file is being executed in /opt/codedeploy-agent/deployment-root/47../<deployment_id>/

#stdout logs of this process executing can be found in /opt/codedeploy-agent/deployment-root/47../<deployment_id>/logs/scripts.log

# here we update the server and install node and npm
echo installing dependencies
sudo apt-get update
sudo apt-get install apache2 -y
curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install nodejs -y
sudo apt-get -y install npm

cd /var/www/html
sudo rm -rf *
cd /app

sudo npm i
sudo npm run build
sudo cp -r build/. /var/www/html
