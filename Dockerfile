FROM php:5.6-fpm-jessie
RUN pecl install pecl install xdebug-2.5.0 \
    && docker-php-ext-enable xdebug \
    && apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng-dev \
	php-soap \
	libxml2-dev \
    && docker-php-ext-install -j$(nproc) iconv mcrypt \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-install soap
COPY config/php/xdebug.ini /usr/local/etc/php/conf.d/
