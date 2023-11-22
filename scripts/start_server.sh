#!/bin/bash
echo starting server
cd /app

sudo npm i
sudo npm run build
cd /var/www/html
sudo rm -rf *
sudo cp -r /app/build/. /var/www/html

sudo service apache2 start


# start the application with pm2
echo starting application...
sudo rm -rf /app/*
#sudo pm2 start npm -- run production
