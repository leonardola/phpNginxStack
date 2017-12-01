# phpNginxStack

### A magento stack with mysql, nginx, php-fpm and everything to run a magento store ###

- remember to create an alias with:

- sudo ifconfig wlp2s0:0 10.254.254.254 up

- xdebug will answer on 10.254.254.254:9001 you can change that on your xdebug.ini file

#### To add configurations to php #### 
- create a .ini file on config/php/
- restart the stack

thanks to https://github.com/locnh/docker-magento/blob/master/1.x/config/nginx/magento.conf
