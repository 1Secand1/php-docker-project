FROM php:8.2-apache

COPY php.ini /usr/local/etc/php/

WORKDIR /var/www/html

RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html
