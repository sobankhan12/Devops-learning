# DOCKER FOR BEGINNER
# DOCKER COMMAND
## 1. Some basic command of docker?
```bash
# list of images
$ docker images
# start simple container
$ docker run nginx
# start container in detach mode
$ docker run -d nginx
# list of containers running
$ docker ps
# docker list all include running or not
$ docker ps -a
# docker container stop
$ docker stop 'docker id or name'
# docker container start from stop condition
$ docker start "docker id or name"
# docker attach from detach mode
$ docker attach "docker id or name"
# delete container first you stop container
$ docker rm "docker id or name"
# how to exit from attach mode of container without stoping container 
$ ctl+p+q
# how to stop container from attach mode with stopping container
$ ctl+c
# how to run container in interactive shell
$ docker run -it nginx
#if you want to excute a command or inspect into running container use this command
$ docker exec "docker id" "command or shell"-- bin/bash
# how to check username of 
$ docker exec "docker id" -- whoami
$ docker exec dfk1233 cat /etc/*release*
```
## 2. How to remove all stop contianers?
```bash
$ docker rm $(docker ps -aq)
```
## 3. How to  stop all running contianers?
```bash
$ docker stop $(docker ps -q)
```
## 3. How to start container with name and port
```bash
$ docker run -d --name webapp -p 87:80 nginx:1.14-alpine
```
## 4. How to delete all  images forcefully with one command?
```bash
$ docker rmi $(docker images -q)
```
## 5. How to delete all types of container running and not running forcefully?
```bash
$ docker rm -f $(docker ps -aq)
```
# DOCKER RUN
## run a container with image kodekloud/simple-webapp:blue  port 3482 8080
```bash
$ docker run -d -p 34820:8080 kodekloud/simple-webapp:blue
```
# DOCKER IMAGES
## 1. How to create a image from Dockerfile
```bash
$ docker build -t sobankhan/simple-app .
```
## 2. How to check base operating system of prebuild image
```bash
# we try to see base operating system of python:3.6 image
$ docker run python:3.6 cat /etc/*release*
```
## 3. How to find environmental variable in your docker container 
```bash
$ docker inspect "container name or id"
#got into config section and your see environmental variable
```
## 4. How pass environmental variable through container running command
```bash
$ docker run -p 8383:8080 -e APP_COLOR=red webapp-color:lite
```
## 5. What is difference between entrypoint vs cmd
```
1. if you want to pass command fix you use cmd  
#CMD ["sleep","5"]
2. if you want to change command at a run time so you entrypoint  
#ENTRYPOINT["sleep"]
3. if no input come for sleep in entrypoint you by default cmd so it not through error  
#CMD["5"]
```
# DOCKER COMPOSE






