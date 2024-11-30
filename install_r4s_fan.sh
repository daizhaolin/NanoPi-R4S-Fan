#!/bin/bash

cd /usr/bin/
rm ./fa-fancontrol.sh
rm ./fa-fancontrol-direct.sh

wget https://raw.githubusercontent.com/daizhaolin/NanoPi-R4S-Fan/main/fa-fancontrol.sh
wget https://raw.githubusercontent.com/daizhaolin/NanoPi-R4S-Fan/main/fa-fancontrol-direct.sh

chmod 777 ./fa-fancontrol.sh
chmod 777 ./fa-fancontrol-direct.sh

cd /etc/init.d
rm ./fa-fancontrol
wget https://raw.githubusercontent.com/daizhaolin/NanoPi-R4S-Fan/main/fa-fancontrol
chmod 777 ./fa-fancontrol
/etc/init.d/fa-fancontrol enable
