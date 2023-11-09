FROM debian:buster

RUN apt-get update

RUN apt-get install -y mariadb-server 

COPY ./cnf/my.cnf /etc/mysql/mariadb.conf.d/my.cnf

RUN service mysql start


CMD ["mysqld"]



