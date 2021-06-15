munin:
  pkg.installed:
    - name: munin-node
  service.running:
    - name: munin-node
    - pkg: munin-node
    - enable: True
    - restart: True
    - watch:
        - pkg: munin-node
        - file: /etc/munin/munin-node.conf

/etc/munin/munin-node.conf:
  file:
    - managed
    - source: salt://munin-node/munin-node.conf
    - user: root
    - group: root
    - mode: 644
