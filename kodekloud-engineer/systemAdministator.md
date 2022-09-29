# EXCERCIZE OF SYSTEM ADMINISTRATOR
### How to create a user with non interactive shell?

```bash
$ useradd -u 1010 -g 1020 -s /sbin/nologin -d /var/www/html john
```
### How to create a user with identity 1011 name john  with directory /var/www/html

```bash
$ useradd -d /var/www/html john
```
### xFusionCorp Industries has an application running on Nautlitus 

```bash
just uncomment this line backend app
#backend app
    balance     roundrobin
    server  app1 127.0.0.1:5001 check
```
### create user without home directory

```
$   useradd -M javed
Am3ric@
```
### How to disable root login

```bash
$ vi /etc/ssh/sshd_config
# permitLogin yes to no that enough

```

### How to change time zone in linux

```bash
$ timedatectl # it will show current time and zone
# now change time zone according to your need Europe/Astrakhan
$ timedatectl set Europe/Astrakhan
```

## How to set expiration of user

```bash
$ usermod -e 2019-30-12 mark
# for new user
$ useradd soban -e 2020-3-5 
# how to see expiration of user
$ sudo chage -l soban
```

## How to make password less authentication for ssh connection

```bash
# first generate ssh in your linux environment
$ ssh-keygen -t rsa
# then copy ssh public key to destination vm 
$ ssh-copy-id  root@stapp02
# you can see temporarily password
$ cat /tmp/p
```

### How to set postfix agent which is mail server is not working

```bash
# first edit file
$ vi /etc/postfix/main.cf
# comment this line
# inet_interfaces=localhost
$ systemctl start postfix
```

### How to install selinux and disabled

```bash
# install selinux
$ yum install selinux*
# and disabled
$ vi /etc/selinux/config
# set selinux=disabled
selinux=disabled
# see status of selinux
$ sestatus
```

### How to set banner for login

```bash
# go to into this directory
$ scp -r /home/thor/natulius banner@stapp02:/tmp
$ vi /etc/motd
```

### How to create a user without home

```bash
# create a user without home
$ useradd -M ravi
# another way
$ useradd ---no-create-home asad
# How to disabled user password
$ sudo useradd --disabled-password --home /opt/username username
# delete a user with home directory
$ sudo deluser --remove-home username

```

### how to find files related to user and then copy from that location to other location

```bash
# first method
find  /home/usersdata -type f  -user kirsty -exec cp --parents {} /ecommerce \;
# second method . mean files
find . -user kirsty | cpio -pdm /ecommerce
```

### how to set graphical interface by boot 

```bash
# first set default graphical
$ systemctl set-default graphical.target
# start graphical 
$ systemctl start graphical.target
```

### How to copy files from one local to remote server

```bash
# how copy files from here to remote server
$ scp -r /tmp/soban.txt steve@stapp02:/tmp
$ ssh steve@stapp02
$ sudo mv /tmp/soban.txt /home/data
```

### How to replace all occurrence with specific word

```basic
# in the vi edit you write it
:%s/soban/asad/g
# 
```

```bash
# replace through command line
$ sed -i 's/soban/asad/g' a.txt
```

### How to encrypt and decrypt file through gpg

```bash

$ gpg --import public_key.asc
$ gpg --import private_key.asc
$ gpg --encrypt -r kodekloud@kodekloud.com --armor < encrypt_me.txt -o encrypted_me.asc 
$ gpg --decrypt decrypte_me.asc > decrypted_me.txt 
```

### How to provide sudo access to user and make passwordless for sudo user

```bash
# first make sudo user ravi and passwordless
$ vi sudo  
# then add this line for specific user
ravi ALL=(ALL) NOPASSWD:ALL
```

### How to configure local yum repos

```bash
$ yum repolist
# we have some packages in /download/*
# now move to this directory
$ cd /etc/yum.repos.d
# create a repo name localyum.repo
$ vi localyum.repo
# add this content
[localyum]
name=localyum
baseurl=file:///packages/downloaded_rpms/
enabled=1
gpgcheck=0
# now save and see yumrepolist
$ yum repolist
# now install samba from this repo
$ yum install samba
```

### How to secure apache server that do not show directory and version number

```bash
# open file
$ vi /etc/httpd/conf/httpd.conf
# remove indexes from 
# then add these lines
ServerSignature Off
ServerTokens Prod
# save and close file
# restart httpd service
$ systemctl restart httpd
```

### How to change port on httpd and redirect

```bash
# first change Listen on 443
$ vi /etc/httpd/conf/httpd.conf
# redirect any url to another like 
# create a main.f
$ vi /etc/httpd/conf.d/main.conf
<VirtualHost *:8084>
        ServerName http://stapp03.stratos.xfusioncorp.com:8084/
        Redirect 301 / http://www.stapp03.stratos.xfusioncorp.com:8084/
</VirtualHost>
<VirtualHost *:8084>
        ServerName http://www.stapp03.stratos.xfusioncorp.com:8084/blog/
        Redirect 302 / http://www.stapp03.stratos.xfusioncorp.com:8084/news/
</VirtualHost>
```

### How to find files and copy from here to another place

```bash
# find and copy files all with parent directory
find /var/www/html/media -type f -name  "*.php" -exec cp --parents {} /media \;
```

### How to set change header in httpd

```bash
$ vi /etc/httpd/conf/httpd.conf
# add this content
Header set X-XSS-Protection "1; mode=block"
Header always append X-Frame-Options SAMEORIGIN
Header set X-Content-Type-Options nosniff
$ systemctl restart httpd
$ curl -i http://localhost:8082
```

### How to make backup of your website in your backup server

```bash
# make script file 
$ vi backup.sh
# copy your script in this file
$ ssh-keygen
# through this you no need to password
$ ssh-copy-id clint@backup01
```

