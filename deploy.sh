#!/bin/sh

set -e
set -x
apt-get install -y vim git nano screen tightvncserver python-setuptools
easy_install pip
pip install twitter

mv /etc/network/interfaces /etc/network/interfaces.old
cp interface /etc/network/interfaces
cp vncboot /etc/init.d/vncboot
update-rc.d vncboot defaults
service vncboot start

# Grab the scream file ahead of time, just in case....
sudo -u pi mkdir -p /home/pi/backup
sudo -u pi wget http://goo.gl/MOXGX3 -O /home/pi/backup/la.mp3 --no-check-certificate
sudo -u pi cp nanorc /home/pi/.nanorc
