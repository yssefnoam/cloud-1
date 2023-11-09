FROM debian:buster

RUN apt update
RUN apt-get -y install nginx vim
RUN mkdir -p /var/www/html
COPY cnf/default.conf /etc/nginx/sites-available/ynoam.com.conf
COPY cnf/example.crt /
COPY cnf/example.key /
CMD  nginx -g "daemon off;"