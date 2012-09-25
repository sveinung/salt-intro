some_directory:
  file:
    - directory
    - name: /home/vagrant/folder/another
    - user: vagrant
    - group: vagrant
    - mode: 755
    - makedirs: True

/home/vagrant/folder:
  file:
    - recurse
    - source: salt://files/lots_of_files
    - require:
      - file: some_directory
