FROM debian:buster

RUN apt-get update
RUN apt-get install -y php-fpm php-gd php-mysql php-cli \
	php-common php-curl php-opcache php-json php-imap php-mbstring php-xml wget

RUN mkdir -p  /var/www/html
WORKDIR /var/www/html
# COPY cnf/latest.tar.gz /var/www/html
# RUN tar -xvf latest.tar.gz
# RUN mv wordpress/* .
# RUN rm -fr mordpress latest.tar.gz

RUN wget  https://files.phpmyadmin.net/phpMyAdmin/4.9.4/phpMyAdmin-4.9.4-all-languages.tar.gz
RUN tar -xvf phpMyAdmin-4.9.4-all-languages.tar.gz
RUN mv phpMyAdmin-4.9.4-all-languages phpmyadmin
RUN cp phpmyadmin/config.sample.inc.php phpmyadmin/config.inc.php
RUN sed -i 's/localhost/mariadb/g' phpmyadmin/config.inc.php

COPY cnf/www.conf /etc/php/7.3/fpm/pool.d
RUN mkdir -p /run/php 
COPY cnf/wp /
RUN chmod +x /wp


CMD ["php-fpm7.3", "-F"]
