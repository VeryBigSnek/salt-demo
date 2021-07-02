base:
  '*':
    - munin-node
    - nginx
    - rsyslog

  # 'itv2f-ubu-1.internal.cloudapp.net':
  'minion':
    - wordpress

  # 'itv2f-ubu-2.internal.cloudapp.net':
  'minion2':
    - munin-master
    - rsyslog-server
    - docker
