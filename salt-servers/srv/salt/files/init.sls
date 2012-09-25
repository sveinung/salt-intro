/home/vagrant/folder/another:
  file:
    - directory
    - user: vagrant
    - group: vagrant
    - mode: 755
    - makedirs: True

/home/vagrant/folder:
  file:
    - recurse
    - source: salt://files/lots_of_files
    - require:
      - file: /home/vagrant/folder/another
