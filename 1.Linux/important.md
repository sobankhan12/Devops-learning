# LINUX COURSE  
Most important keypoints for linux
# Security and File Permission
## 1. How to create a user and gorup?
```bash
#create a group name developer id 1010
$ sudo groupadd -g 1010 developer
#create user soban with id 1011 group id 1010 shell bash directory /home/soban with message "your cession"
$ sudo useradd -u 1011 -g 1010 -d /home/soban/ -sh /bin/bash/ -c "this your space" soban
# set password
$ passwd soban 
```
## 2. How to see permission of sudo username?
```bash
sudo grep soban /etc/sudoers
```
## 3. Which file has encrypted password for user?
```bash
$ sudo grep soban /etc/shadow
```
## 4.How to find full name of user and detail?
```bash
$ sudo grep soban /etc/passwd
```
## 5. How to see user have been assigned group?
```bash
$ sudo grep soban /etc/group
```
## 6. How to change ownner and group of file?
```bash
$ chown soban:developer test-file.txt
# just change owner
$ chown john test-file.txt
# just change group 
$ cgrp production test-file.txt
```
## 7. How to create a key-pair on client side?
```bash
$ ssh-keygen -t rsa
#public key will be store in
# /home/username/.ssh/id_rsa.pub
#private key will be store in
# /home/username/.ssh/id_rsa
```
## 8. How to copy ssh-id?
```bash
$ ssh-copy-id bob@devappp01
```
## 9. How to copy files from local computer to remote server?
```bash
$ scp /home/soban/caleston-code.tar.gz devapp01:/home/bob
```
## 10. How to create a user with non interactive shell?
```bash
$ sudo useradd soban -s /sbin/nologin
```
# STORAGE AND  FILE SYSTEM
## 1. How to create file system in ex4 ?
```bash
$ mkfs.ex4 /dev/sdb1
```
## 2. How mkdir for file system?
```bash
$ mkdir /mount/ex4;
```
## 3. How to mount directory with partition?
```bash
$ mount /dev/sdb1 /mount/ex4
```
## 4. How to check file system is mounted correctly?
```bash
$ mount | grep /dev/sdb1
# another way 
$ df -h | grep /dev/sb1
```
## 5. How to make system available after reboot system 
```bash
$ echo "/dev/sdb1 /mount/ex4 ex4 rw 0 0" >> /etc/fstab
# filesystem mount point  type options=rw dump or backup=0,1 pass=0,1
echo "/dev/vdb /mnt/data ex4  rw 0 0" >> /etc/fstab
```
## DAS NAS SAN
## DAS
1. block storage and more faster than storage system but it is not good for larger business because it is work with only device  
## NFS
## 1. How to check other client in nfs?
```bash
# we can check configuration of client laptop
$ /etc/exports
# it looks like
/software/repos "client ip" "client ip" etc
# we export our file in this directory
$ /software/repos
```
## 2. How to share directory with other clients in NFS
```bash
$ exportsfs -a
$ exportsfs -av
# it exports all files under directory of /etc/exports
```
## 3. How to exports files in NFS manully in NFS?
```bash
$ exportsfs -o "clinet ip":/software/repo
```
## 4. How to mount NFS in Client side
```bash
$ mount "nfs server ip":/software/repo  /mnt/software/repo
```
## 5. How to check how many mounts are available on client laptop
```bash
$ mount | grep -w nfs
```
# LINUX EDITORS
## 1. TOUCH
- it is used to create a emty files
- its important function to store timestamp
```bash
# how to see timestamp of any file
$ stat filename.txt
# how to edit access timestamp 
$ touch -a
# how to modify timestamp
$ touch -m
```
## 2. Cat
- it is used to concate files
```bash
# how to create a file
$ cat >a.txt
# how to append data in file
$ cat >>a.txt
# how to cancate multiple files
cat file1 file2 >a.txt
# how to see view of file in reverse
```
# Linux Directories
```bash
# how to create multiple threading directories in linux
$ mkdir -p soban/khan/aws
# How to make hidden file or directory
$ mkdir .git
$ touch .a.txt
```
# INSTALL AND UPDATE
- how to see name of hostname
```bash
$ hostname
```
- how to see ip of linux
```bash
$ hostname -i
```
- how to see full detail of os
```bash
$ cat /etc/os-release
```
- how to install any package 
```bash
$ yum install httpd
$ service start httpd
$ service status httpd
$ chkconfig httpd on
$ chkconfig httpd off
```
# Which Who Whoami
- which command is used to see any package is installed or not
```bash
$ which httpd
```
- whoami command tell you that you normal user or root user
```bash
$ whoami
```

# USERS,GROUP,TAR,WGET

1. ## User

- how to create a user in linux
- 1. u is used for user id
  2. -g is used for group id 
  3. -d for home directory for user
  4. -sh for shell
  5. c for comment or description

```bash
$ useradd soban -u 1010 -g 1212 -d /home/soban/ -sh /bin/bash -c "this is your space soban"
# how to see user in linux
$ cat /etc/passwd | grep soban
# how to create ad group
$ groupadd developer -g 1313
# how to add one user to specific group
$ gpasswd -a  soban developer
# how to add multiple users in group
$ gpasswd -M soban,khalid,vijay developer

```

### TAR

- tar is used to compress multiple files in file

```bash
# how to tar folder
$ tar -cvf soban.tar soban
# how to zip tar file
$ gzip soban.tar
# how to unzip 
$ gunzip soban.tar.gzip
# how to untar file
$ tar -xvf soban.tar
```



### ln,ln -s

- ln is hard link and it is used to make backup file and ln -s is used for soft link

```bash
$ ln soban.txt sobanhardlink1.txt
# how to make softlink of any file and it is used for make shorcut of any file
# when you delete original file this softlink file will be unaccessible
ln -s soban.txt softlinksoban.txt
```

# CHMOD,CHOWN,CHGRP

1. # CHMOD

   + change permission to specific file or directory
   + r=4,w=2,x=1

   ```bash
   # how to change permission to specific direcoty
   $ chmod 777 soban.txt
   # how to change permission to specific direcoty in a different way
   $ chmod u-x,g=rw,o=r soban.txt
   ```

   

 

- ## Commands of vi editor

  ```bash
  # how to go to first line of file
  $ gg
  # how to copy  lines an paste
  $ nyy && p
  # how to delete a lines 
  $ ndd
  # how to search  word
  $ /searchkeyword
  # how to find a specific thing with command
  $ cat /etc/grooup | grep amanat
  ```

  
