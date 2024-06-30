FROM php:8.3.9RC1-fpm-alpine3.20

RUN docker-php-ext-install mysqli

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html
