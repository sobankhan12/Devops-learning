# Docker Introduction

- ## Introduction

  - docker is like a hypervisor and 
  - it is lightweight weight
  - it uses underlying structure. 

- ## Containerization

  - it like a virtual machine

- ## Basic commands

  ```bash
  # How to see images list
  $ docker images ls
  # how to search images from docker hub
  $ docker search "image name"
  # how to pull image from docker hub
  $ docker pull jenkins
  # how to start container
  $ docker start "container name"
  # how to stop container
  $ docker stop "contaienr name"
  # how to run container 
  $ docker run -it --name ubuntu -p 80:81 jenkins /bin/bash
  # how to go to in interactive mode in start container
  $ docker attach "container name"
  # How to see difference in your container
  $ docker diff "container name"
  
  ```

- ## How to create a image from container

  ```bash
  $ docker commit "container name " "updated image name"
  ```


- ## How to see differences or changes in base image through container

  ```bash
  $ docker diff "container name" 
  ```

- ## How to create image file and its key points

  - ## FROM

    - Its means you want to pick up a base image where you will changes according to your according. eg ubuntu, Nginx and apache.

  - ## RUN

    - If you want to make layer upon your base image

   - ## MAINTAINER

     - it is used to create author or writer  name just that wo create this image

   - ## COPY

        - it is used to copy code from local directory to image file creation

    - ## ADD
    
        - It is similar to copy command but it gives feature to download content from internet.

   - ## EXPOSE

        - It is used to expose your website on which port number after IP address

   - ## CMD
  
        - It executes command during container creation
  
   - ## ENTRYPOINT
  
        - it is similar to CMD but it has higher priority than CMD. These commands will be execute first than the commands of CMD
        
   - ## ENV
  
        -  these environmental variables like we give password through environmental variables.
        
   - # WORKDIR
  
        - To set working directory for your container start

# How to create Docker file step by step

- create a docker file
- add instructions in this file
- build a docker image
- run a container by using this image

```bash
# create Dockerfile
$ echo "From Ubuntu
RUN echo 'technical guftugu'>>/temp/sobanfile">> Dockerfile
# create docker image
$ docker build -t "image name" .
# now run a container by using this image
$ docker run -it --name "test" "image name" /bin/bash/
```

```basic
FROM ubuntu
WORKDIR /temp
RUN echo "hello how are you">>/temp/hello
COPY Intro /temp
ADD test.ar.gz /temp
ENV myname "soban khan"
```

