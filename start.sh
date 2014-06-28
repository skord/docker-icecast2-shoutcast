#!/bin/bash

cp /etc/icecast2/config.xml /etc/icecast2/user-config.xml

sed -i "s/IC2_SOURCE_PASSWORD/$IC2_SOURCE_PASSWORD/" /etc/icecast2/user-config.xml
sed -i "s/IC2_RELAY_PASSWORD/$IC2_RELAY_PASSWORD/" /etc/icecast2/user-config.xml
sed -i "s/IC2_ADMIN_USER/$IC2_ADMIN_USER/" /etc/icecast2/user-config.xml
sed -i "s/IC2_ADMIN_PASSWORD/$IC2_ADMIN_PASSWORD/" /etc/icecast2/user-config.xml

/usr/bin/icecast2 -c /etc/icecast2/user-config.xml

