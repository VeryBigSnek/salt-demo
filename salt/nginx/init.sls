nginx:
  pkg.installed:
    - name: nginx
  service.running:
    - name: nginx
    - pkg: nginx
    - enable: True
    - reload: True
    - watch:
        - pkg: nginx
        - file: /etc/nginx/nginx.conf
        - file: /etc/nginx/sites-available/default

php:
  pkg.installed:
    - name: php7.2-fpm
    - pkgs:
        - php7.2-fpm
        - php7.2-mysql
  service.running:
    - name: php7.2-fpm
    - pkg: php7.2-fpm
    - enable: True
    - restart: True
    - watch:
        - pkg: php7.2-fpm
        - file: /etc/php/7.2/fpm/php-fpm.conf

mariadb:
  pkg.installed:
    - name: mariadb-server
  service.running:
    - name: mariadb
    - pkg: mariadb-server
    - enable: True
    - restart: True

nginx config:
  file:
    - managed
    - name: /etc/nginx/nginx.conf
    - source: salt://nginx/nginx.conf
    - user: root
    - group: root
    - mode: 644

nginx sites available:
  file:
    - managed
    - name: /etc/nginx/sites-available/default
    - source: salt://nginx/default
    - user: root
    - group: root
    - mode: 644

php-fpm config:
  file:
    - managed
    - name: /etc/php/7.2/fpm/php-fpm.conf
    - source: salt://nginx/php-fpm.conf
    - user: root
    - group: root
    - mode: 644
