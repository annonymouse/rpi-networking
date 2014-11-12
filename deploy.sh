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
