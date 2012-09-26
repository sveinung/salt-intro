Intro til Salt
==============

VeeWee template stolen from mattmcclean

1. gem install vagrant
   + visualbox

2. gem install veewee

While in the folder above definitions/

3. (if defining a new box)
   vagrant basebox define 'ubuntu-10.10-salt' 'ubuntu-10.10-server-amd64'

(if using the existing box, use 'ubuntu-11.10-server-amd64-salt096' as below)

4. vagrant basebox build ubuntu-11.10-server-amd64-salt096

5. vagrant basebox validate ubuntu-11.10-server-amd64-salt096

6. vagrant basebox export   ubuntu-11.10-server-amd64-salt096

7. vagrant box add 'ubuntu-11.10-server-amd64-salt096' 'ubuntu-11.10-server-amd64-salt096.box'

8. vagrant init 'ubuntu-11.10-server-amd64-salt096'

