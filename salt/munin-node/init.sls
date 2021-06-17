munin:
  pkg.installed:
    - name: munin-node
  file:
    - managed
    - source: salt://munin-node/munin-node.conf
    - name: /etc/munin/munin-node.conf
    - user: root
    - group: root
    - mode: 644
  service.running:
    - name: munin-node
    - pkg: munin-node
    - enable: True
    - restart: True
    - watch:
        - pkg: munin-node
        - file: /etc/munin/munin-node.conf
