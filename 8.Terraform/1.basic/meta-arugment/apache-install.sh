#! /bin/bash
sudo apt-get update -y
sudo apt install nodejs -y
sudo apt install npm -y
cd /home/ubuntu
git clone https://github.com/sobankhan12/mynode-repo.git
cd mynode-repo
npm install
npm install pm2 -g
pm2 list 
pm2 startup
pm2 save
pm2 start app.js 
pm2 save
pm2 reload all




    