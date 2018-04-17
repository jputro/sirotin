#!/bin/bash

echo "Configuring live USB..."
setxkbmap fi
sudo timedatectl set-timezone Europe/Helsinki
sudo apt-get update
sudo apt-get -y install git salt-minion
echo 'master: localhost'|sudo tee /etc/salt/minion
git clone https://github.com/terokarvinen/sirotin
sudo salt-call --local --file-root srv/salt/ --pillar-root srv/pillar/

echo "More tips on http://terokarvinen.com/tag/saltstack"
echo "Done."
