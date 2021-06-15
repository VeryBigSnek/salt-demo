rsyslog:
  pkg.installed:
    - name: rsyslog
  service.running:
    - name: rsyslog
    - pkg: rsyslog
    - enable: True
    - restart: True
    - watch:
        - pkg: rsyslog
        - file: /etc/rsyslog.conf
        - file: /etc/rsyslog.d/50-default.conf

/etc/rsyslog.conf:
  file:
    - managed
    - source: salt://rsyslog/rsyslog.conf
    - user: root
    - group: root
    - mode: 644

/etc/rsyslog.d/50-default.conf:
  file:
    - managed
    - source: salt://rsyslog/50-default.conf
    - user: root
    - group: root
    - mode: 644
