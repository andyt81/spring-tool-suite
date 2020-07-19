FROM maven:3.6.3-openjdk-8
ENTRYPOINT [ "/entrypoint.sh" ]
VOLUME [ "/opt/workspace" ]
ADD https://download.springsource.com/release/STS4/4.7.0.RELEASE/dist/e4.16/spring-tool-suite-4-4.7.0.RELEASE-e4.16.0-linux.gtk.x86_64.tar.gz /opt/sts.tgz
COPY entrypoint.sh /  
RUN apt update && apt install -y libswt-gtk-4-java dbus-x11 libcanberra-gtk3-module packagekit-gtk3-module xdg-utils less && cd /opt && tar -zxvf sts.tgz && rm -f sts.tgz

