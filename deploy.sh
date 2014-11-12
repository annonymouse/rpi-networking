#!/bin/sh

set -e
set -x
apt-get install -y vim git nano screen tightvncserver
curl -O https://raw.github.com/pypa/pip/master/contrib/get-pip.py
python get-pip.py
pip install twitter

mv /etc/network/interfaces /etc/network/interfaces.old
cp interface /etc/network/interfaces
