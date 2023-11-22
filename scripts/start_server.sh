#!/bin/bash
echo starting server
cd /var/www/html
sudo rm -rf *
cd /app

sudo npm i
sudo npm run build
sudo cp -r /app/build/. /var/www/html

sudo service apache2 start
# start the application with pm2
echo starting application...
#sudo pm2 start npm -- run production
