#!/bin/bash
echo starting server

# here we just use npm to run the build
cd /app
echo building application...
sudo npm install
sudo npm run build
cd /var/www/html
sudo rm -rf *
sudo cp -r /app/build/. /var/www/html
# start the application with pm2
echo starting application...
#sudo pm2 start npm -- run production
