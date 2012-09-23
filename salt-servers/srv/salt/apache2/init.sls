apache2:
  pkg:
    - installed
  service:
    - running
    - watch:
      - pkg: apache2
      - file: /etc/apache2/httpd.conf

/etc/apache2/httpd.conf:
  file:
    - managed
    - source: salt://apache2/httpd.conf
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: apache2
