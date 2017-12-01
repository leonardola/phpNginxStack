# phpNginxStack

### A magento stack with mysql, nginx, php-fpm and everything to run a magento store ###

- xdebug will answer on 10.254.254.254:9001, you can change that on your xdebug.ini file
- xdebug is pre-configured for phpstorm, change config in xdebug.ini file
- to change the php version just change the Dockerfile to the version you want

### how to use ###
- clone this repository
- add your magento project folder inside code/ folder
- add your nginx config file into config/nginx/ folder
- sudo docker-compose build
- sudo docker-compose up(need this on the first run, than you can change up to start)
- add this to your /etc/hosts file: <br>
      127.0.0.1  example.com <br>
      127.0.0.1  phpinfo.com <br>
- open example.com on your browser. You should see the message "welcome to the magento docker stack"
- open phpinfo.com on your browser. You should see the phpinfo page

#### To add configurations to php #### 
- create a .ini file on config/php/
- restart the stack

thanks to https://github.com/locnh/docker-magento/blob/master/1.x/config/nginx/magento.conf
