FROM php:8.2-fpm-alpine
RUN docker-php-ext-install mysqli
FROM php:8.2-fpm-alpine
RUN docker-php-ext-install mysqli
RUN mkdir -p /sessions && chown www-data:www-data /sessions \
 && echo "session.save_path=/sessions" > /usr/local/etc/php/conf.d/sessions.ini
