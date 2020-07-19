# spring-tool-suite

Container running spring-tool-suite 4 based on maven:3.6.3-openjdk-8

Also includes
* Sonar Lint
* EclEmma
* DevStyle Theme

## Getting Started

The container is passed environment variables container you username, UID and GID. Files created with the container will then match your local file system when you mount the workspace volume.

You may need to run something like below to allow the UI to be displayed

```
$ xhost local:root 
```

### Running from the command line 

```
docker run -v /tmp/.X11-unix:/tmp/.X11-unix \
-v ~/.Xauthority:/develop/.Xauthority:ro \
-v /home/andyt81/workspace:/opt/workspace \
-e USER=andyt81 -e UID=1000 -e GID=1000 --net host \
andyt81/spring-tool-suite:latest
```

### docker-compose.yml

```
version: '3.3'
 
services:
    sts:
        image: andyt81/spring-tool-suite:latest
        container_name: "spring-tool-suite"
        volumes:
            - /tmp/.X11-unix:/tmp/.X11-unix
            - ~/.Xauthority:/develop/.Xauthority:ro
            - /home/${USER}/workspace:/opt/workspace
        environment:
            USER: ${USER}
            UID: ${UID}
            GID: ${UID} # Hopefully it's the same!
            DISPLAY: ${DISPLAY}
        network_mode: host
```

#### Environment Variables

* USER - The local user account name 
* UID - Your numeric user id
* GID - Your numeric group id

#### Volumes

* `/home/${USER}/workspace` - Host path to your workspace folder


