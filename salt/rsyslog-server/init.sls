rsyslog-server:
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

deploy_rsysnc_server_config:
  file:
    - managed
    - name: /etc/rsyslog.conf
    - source: salt://rsyslog-server/rsyslog.conf
    - user: root
    - group: root
    - mode: 644
