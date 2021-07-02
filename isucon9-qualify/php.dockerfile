FROM php:7.2.34-fpm

RUN apt-get update \
  && apt-get -y install \
  libzip-dev \
  unzip \
  && docker-php-ext-install \
  pdo_mysql \
  mbstring \
  zip

COPY --from=composer /usr/bin/composer /usr/bin/composer
ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_NO_INTERACTION 1

ADD ./php /app

WORKDIR /app
RUN composer install