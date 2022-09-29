Content-Type: multipart/mixed; boundary="//"
MIME-Version: 1.0
--//
Content-Type: text/cloud-config; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename="cloud-config.txt"

#cloud-config
cloud_final_modules:
- [scripts-user, always]

--//
Content-Type: text/x-shellscript; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename="userdata.txt"
#! /bin/bash
sudo rm /var/lib/cloud/sem/user-scripts.*
sudo apt-get update -y
sudo apt install nodejs -y
sudo apt install npm -y
cd /home/ubuntu
sudo rm -rf *
# git clone https://github.com/sobankhan12/simple-reactjs-app.git
# cd simple-reactjs-app
git clone https://github.com/sobankhan12/bootcamp-shoe-store.git
cd bootcamp-shoe-store
npm install
npm install pm2 -g
pm2 kill
pm2 startup
pm2 save
pm2 start npm -- start



    