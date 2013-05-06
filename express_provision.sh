#! /bin/bash

sudo apt-get update
sudo apt-get -y install python-software-properties python g++ make
echo | sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get -y install nodejs
sudo npm install -g express-train

cd /vagrant
touch logs/express.log
nohup train run > logs/express.log 2>&1 &
