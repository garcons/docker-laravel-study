FROM php:7.2-fpm-alpine
MAINTAINER mizuki

# Install PHP extensions
RUN apk update && apk upgrade --update && apk --no-cache add \
    git \
    vim less \
    icu-dev \
    libpng-dev \
    jpeg-dev \
    autoconf \
    make \
    g++ \
    gcc \
    mysql-client \
    && rm -r /var/cache/apk/*

RUN docker-php-ext-configure \
    gd --with-png-dir=/usr/include --with-jpeg-dir=/usr/include && \
    docker-php-ext-install -j$(nproc) \
    intl \
    gd \
    pdo_mysql \
    opcache \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug

COPY  ./php.ini /usr/local/etc/php/conf.d/myphp.ini
COPY  ./php-fpm.conf /usr/local/etc/php-fpm.d/myphp-fpm.conf
