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
sudo apt-get install nginx -y
sudo apt install nodejs -y
sudo apt install npm -y
cd /var/www/html
sudo rm -rf *
sudo git clone https://github.com/sobankhan12/bootcamp-shoe-store.git
cd bootcamp-shoe-store

sudo npm install
sudo npm run build
#sudo sed -i 's% /var/www/html% /var/www/html/build%' /etc/nginx/sites-available/default
sudo cp -R build/* /var/www/html
sudo systemctl restart nginx


