#!/bin/bash

echo 'Initializing the Salt master'

sudo cp /vagrant/master.conf /etc/salt/master

sudo salt-master -d

echo 'Salt master running ...'

