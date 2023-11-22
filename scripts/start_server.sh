#!/bin/bash
echo starting server
sudo service apache2 start
# start the application with pm2
echo starting application...
#sudo pm2 start npm -- run production
