base:
  '*':
    - munin-node
    - rsyslog
    - nginx

  'itv2f-ubu-1.internal.cloudapp.net':
    - wordpress

  'itv2f-ubu-2.internal.cloudapp.net':
    - munin-master
    - rsyslog-server
    - docker
