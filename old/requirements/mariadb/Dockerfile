FROM debian:buster

RUN apt update
RUN apt-get install -y mariadb-server procps vim
COPY cnf/* /
RUN mv /my.cnf /etc/mysql/mariadb.conf.d
RUN chown mysql:mysql /etc/mysql/mariadb.conf.d/my.cnf
RUN chmod 744 /etc/mysql/mariadb.conf.d/my.cnf
CMD sh /setup.sh