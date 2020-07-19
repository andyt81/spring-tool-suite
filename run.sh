docker run andyt81/spring-tool-suite:latest \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v - ~/.Xauthority:/develop/.Xauthority:ro \
-v - /home/${USER}/docker/sts/workspace:/opt/workspace \
-e USER=${USER} -e UID=${UID} -e GID=${UID} \
-net host

