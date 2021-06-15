munin-server:
  pkg.installed:
    - name: munin

/etc/munin/munin.conf:
  file:
    - managed
    - source: salt://munin-master/munin.conf
    - user: root
    - group: root
    - mode: 644

/etc/systemd/system/munin-cron.service:
  file:
    - managed
    - source: salt://munin-master/munin-cron.service
    - user: root
    - group: root
    - mode: 644

/etc/systemd/system/munin-cron.timer:
  file:
    - managed
    - source: salt://munin-master/munin-cron.timer
    - user: root
    - group: root
    - mode: 644

munin web server:
  file.directory:
    - name: /var/www/html
    - user: munin
    - group: munin
    - mode: 755

munin-cron:
  service.running:
    - name: munin-cron
    - enable: True
    - reload: True
    - watch:
        - pkg: munin
