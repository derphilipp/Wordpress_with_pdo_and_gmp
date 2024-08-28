FROM wordpress:latest

RUN apt-get update \
  && apt install libgmp-dev -y  \
  && docker-php-ext-install pdo pdo_mysql gmp \
  && docker-php-ext-enable  pdo pdo_mysql gmp \
  && rm -rf /var/lib/apt/lists/*


EXPOSE 80
