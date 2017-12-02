# phpNginxStack

### A magento stack with mysql, nginx, php-fpm and everything to run a magento store ###

- xdebug will answer on 10.254.254.254:9001, you can change that in config/php/xdebug.ini file
- xdebug is pre-configured for phpstorm, change config in config/php/xdebug.ini file
- use "db" instead of an ip when connecting to the database
- phpmyadmin can be accesses on http://localhost:8080/
- bundled with php56-fpm and php70-fpm

### How to use ###
- clone this repository
- add your magento project folder inside code/ folder
- add your nginx config file into config/nginx/ folder (copy the example70.conf or example56.conf file)
- sudo docker-compose build
- sudo docker-compose up (need this on the first run, than you can change up to start)
- add this to your /etc/hosts file: <br>
      127.0.0.1  example56.com <br>
      127.0.0.1  example70.com <br>
      127.0.0.1  phpinfo56.com <br>
      127.0.0.1  phpinfo70.com <br>
- open http://example56.com on your browser. You should see the message "Welcome to the magento docker stack" and "Database connection is working"
- open http://example70.com on your browser. You should see the message "Welcome to the magento docker stack" and "Database connection is working"
- open http://phpinfo56.com on your browser. You should see the phpinfo page of the php 56
- open http://phpinfo70.com on your browser. You should see the phpinfo page of the php 70
- to 'ssh' into the nginx container just use ./bash.sh


#### To add configurations to php #### 
- create a .ini file on config/php/
- restart the stack

thanks to https://github.com/locnh/docker-magento/blob/master/1.x/config/nginx/magento.conf
