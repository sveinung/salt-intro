include:
  - apache2

/var/www/index.html:
  file:
    - managed
    - source: salt://mywebsite/index.html
    - require:
      - pkg: apache2
