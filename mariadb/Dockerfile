FROM debian:buster

COPY ./db.sql /tmp/
RUN apt-get update -y && apt-get upgrade -y\
    && apt-get install mariadb-server -y && service mysql start\
    && mysql -u root < /tmp/db.sql \
    && sed -i "s/#port/port/" /etc/mysql/mariadb.conf.d/50-server.cnf \
    && sed -i "s/127.0.0.1/0.0.0.0/" /etc/mysql/mariadb.conf.d/50-server.cnf


ENTRYPOINT [ "mysqld_safe" ]
