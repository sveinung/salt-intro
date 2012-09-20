#!/bin/bash

hn=`hostname`
echo "Initializing a Salt minion on $hn"

sudo cp /vagrant/minion.conf /etc/salt/minion

nohup sudo salt-minion > /dev/null 2>&1 &

echo 'Salt minion running...'

sudo salt-call state.highstate

echo "Salt minion $hn configured."

