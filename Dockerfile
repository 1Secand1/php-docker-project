FROM php:8.2-apache

COPY php.ini /usr/local/etc/php/

WORKDIR /var/www/html

RUN echo "ServerName php-test-czjcvn-eab325-45-12-135-58.traefik.me" >> /etc/apache2/apache2.conf

RUN mkdir -p /var/www/html/public \
    && chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html/public
