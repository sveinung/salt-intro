# Install Salt and dependencies

# Install Zeromq dependencies
apt-get -y install libtool autoconf automake uuid-dev
apt-get -y install python-dev python-software-properties python-setuptools
easy_install pip

# Install Zeromq from source
ZEROMQ=zeromq-2.1.11
wget http://download.zeromq.org/${ZEROMQ}.tar.gz
tar xvzf ${ZEROMQ}.tar.gz
cd ${ZEROMQ}
./configure
make
make install
ldconfig
cd ..
rm -rf ${ZEROMQ}

# Install Salt dependencies
apt-get -y install python-yaml python-m2crypto
pip install pycrypto jinja2 msgpack-python
easy_install pyzmq

# Install Salt from source
SALT=salt-0.9.6
wget --no-check-certificate "https://github.com/downloads/saltstack/salt/${SALT}.tar.gz"
cd /opt
tar xvzf /home/vagrant/${SALT}.tar.gz
cd ${SALT}
python setup.py install
cd /home/vagrant

