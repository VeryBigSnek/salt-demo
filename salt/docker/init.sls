docker:
  pkgrepo.managed:
    - humanname: Docker CE Repository
    - name: deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable
    - key_url: https://download.docker.com/linux/ubuntu/gpg
    - refresh: True
    - require_in:
        - pkg: docker-ce
  pkg.installed:
    - name: docker-ce
    - pkgs:
      - docker-ce
      - docker-ce-cli
      - containerd.io
