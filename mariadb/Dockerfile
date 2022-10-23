FROM debian:buster

RUN apt-get update -y && apt-get upgrade -y\
    && apt-get install mariadb-server -y && service mysql start\
    && echo "create database if not exists my_database; use my_database;" > script.sql\
    && mysql mysql < script.sql\
    && sed -i "s/#port/port/" /etc/mysql/mariadb.conf.d/50-server.cnf \
    && sed -i "s/127.0.0.1/0.0.0.0/" /etc/mysql/mariadb.conf.d/50-server.cnf

EXPOSE 3306

ENTRYPOINT [ "mysqld_safe" ]


#alter user root@localhost identified by '123';
#flush privileges;

# mysql -u root ""