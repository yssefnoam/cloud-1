FROM debian:buster

RUN apt-get update
RUN apt-get install -y php-fpm php-gd php-mysql php-cli \
	php-common php-curl php-opcache php-json php-imap php-mbstring php-xml 

RUN mkdir -p  /var/www/html
WORKDIR /var/www/html
# COPY cnf/latest.tar.gz /var/www/html
# RUN tar -xvf latest.tar.gz
# RUN mv wordpress/* .
# RUN rm -fr mordpress latest.tar.gz

COPY cnf/www.conf /etc/php/7.3/fpm/pool.d
COPY cnf/setup.sh /
RUN mkdir -p /run/php 
COPY cnf/wp /
RUN chmod +x /wp


CMD ["php-fpm7.3", "-F"]
