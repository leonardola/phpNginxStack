FROM php:5.6-fpm-jessie
RUN pecl install pecl install xdebug-2.5.0 \
    && docker-php-ext-enable xdebug

