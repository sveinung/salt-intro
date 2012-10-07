Intro til Salt
==============

VeeWee template stolen from mattmcclean

Install [Virtualbox](https://www.virtualbox.org/) (manually), [Vagrant](http://vagrantup.com/), and [VeeWee](https://github.com/jedi4ever/veewee)
```bash
gem install vagrant
gem install veewee
```

... and while in the folder above definitions/

(if defining a new box)
```bash
vagrant basebox define 'ubuntu-10.10-salt' 'ubuntu-10.10-server-amd64'
```

(if using the existing box, use 'ubuntu-11.10-server-amd64-salt-0.10.3' as below)

```bash
vagrant basebox build ubuntu-11.10-server-amd64-salt-0.10.3
```

```bash
vagrant basebox validate ubuntu-11.10-server-amd64-salt-0.10.3
```
Validation probably fails at some points, but who cares ..?

```bash
vagrant basebox export   ubuntu-11.10-server-amd64-salt-0.10.3
```

```bash
vagrant box add 'ubuntu-11.10-server-amd64-salt-0.10.3' 'ubuntu-11.10-server-amd64-salt-0.10.3.box'
```

```bash
vagrant init 'ubuntu-11.10-server-amd64-salt-0.10.3'
```
