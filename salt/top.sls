base:
  '*':
    - munin-node
    - rsyslog
    - nginx

  # 'itv2f-ubu-1.internal.cloudapp.net':
  'minion.local':
    - wordpress

  # 'itv2f-ubu-2.internal.cloudapp.net':
  'minion2.local':
    - munin-master
    - rsyslog-server
    - docker
