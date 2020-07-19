#!/bin/bash
if [ "$USER" == "" ]; then
    USER=develop
fi
if [ "$GID" == "" ]; then
    GID=1000
fi
if [ "$UID" == "" ]; then
    UID=1000
fi

groupadd $USER -g $GID
useradd $USER -u $UID -g $USER -m -s /bin/bash
su $USER -c "/opt/sts-4.7.0.RELEASE/SpringToolSuite4 -data /opt/workspace"