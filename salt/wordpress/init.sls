download_wordpress:
 cmd.run:
  - cwd: /var/www/html/
  - name: 'wget http://wordpress.org/latest.tar.gz && tar xzf latest.tar.gz --strip-components=1'
