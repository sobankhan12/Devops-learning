# Docker volume

- Volume is simply a directory inside a container

- Volumes created only while creating container

- Volumes can not created in existing container

- Volumes can be access if container is stopped

- Volumes can be shared to many containers as a same time

- Volumes will not be include in updated image

- Volumes can be mounted in two ways

  -  Host  to container

  - Container to Container

    

# Benefits of volumes

- Decoupling Containers from storage
- share volume to different Containers
- On deleting Container storage will not be 

# Creating Volumes from Docker file

```bash
FROM ubuntu
VOLUME ['/myvolume1']
```

- - create a image from this file

  - then create a container name "container1"

  - then create a second container and attach volume of first container with this newly container

    ```bash
    # create a second container container
    $ docker run -it --name secon_container ubuntu --privileged=true --volumes-from container1 ubuntu /bin/bash
    
    ```

- ## Create volume  through command and then attach this volume with others container

  ```bash
  $ docker run -it --name cont3 -v /volume2 ubuntu /bin/bash
  # now attach attach volume of this container with other container
  $ docker run -it --name cont4 --privileged=true --from-file cont3 ubuntu /bin/bash
  ```

  

- ## Host -container Volumes

  - create volume through host-container

    ```bash
    $ docker run -it --name hostcont -v /home/ec2-user:/mypersonal ubuntu /bin/bash
    # create a second container 
    $ docker run -it --name cont5 --volumes-from hostcont ubuntu /bin/bash
    ```

    - # Another way to create volume by using command

      ```bash
      # create a volume by using command
      $ docker create volume "vol1"
      # how to delete volume
      $ docker  volume rm "volume name"
      # How to delete all unattached or unused volumes
      $ docker volume prune
      # How to list volumes
      $ docekr volume list
      # how to mount volume
      $ docekr volume create data1
      $ docker run --mount source="volume name",destination=/data ubuntu
      ```

      