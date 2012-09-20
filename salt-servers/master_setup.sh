#!/bin/bash

echo 'Initializing the Salt master'

sudo cp /vagrant/master.conf /etc/salt/master

nohup sudo salt-master > /dev/null 2>&1 &

echo 'Salt master running ...'

