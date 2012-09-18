Intro til Salt
==============

VeeWee template stolen from mattmcclean

1. gem install vagrant

2. gem install veewee

3. vagrant basebox define 'ubuntu-10.10-salt' 'ubuntu-10.10-server-amd64'

4. vagrant basebox build 'ubuntu-10.10-salt'
   vagrant basebox build ubuntu-11.10-server-amd64-salt096

5. vagrant basebox validate ubuntu-11.10-server-amd64-salt096

6. vagrant basebox export   ubuntu-11.10-server-amd64-salt096

7. vagrant box add 'ubuntu-11.10-server-amd64-salt096' 'ubuntu-11.10-server-amd64-salt096.box'

8. vagrant init 'ubuntu-11.10-server-amd64-salt096'

