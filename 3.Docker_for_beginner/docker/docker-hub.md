# Docker Hub

- ## Introduction

  - it is a station where we store our image. Its a free and paid subscription

 - ## Tags

   - It is used to rename your image id or image name

     ```bash
     $ docker tag "image name" "soban252/nginx:latest"
     ```

- ## How to stop all containers in once?

  ```bash
  $ docker stop $(docker ps -a -q)
  ```

- ## How to delete all containers at once?

  ```bash
  $ docker rm $(docker ps -a -q)
  ```

- ## How to delete all images at once

  ```bash
  $ docker rmi -f $(docker images -q)
  ```

  