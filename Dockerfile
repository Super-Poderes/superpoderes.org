FROM php:8.0-apache
RUN pecl install xdebug-3.0.3
RUN docker-php-ext-enable xdebug
RUN echo "xdebug.mode=debug" >> /usr/local/etc/php/php.ini
### Php ###
# COPY . /usr/src/jrocha-websites
# WORKDIR /usr/src/jrocha-websites
### Apache ###
COPY . /var/www/html/
WORKDIR /var/www/html/
