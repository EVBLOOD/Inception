CREATE DATABASE if not exists my_database;
CREATE USER $MYSQL_USER@'%';
GRANT ALL PRIVILEGES ON my_database.* to $MYSQL_USER@'%' IDENTIFIED BY $MYSQL_PASSWORD;
alter user 'root'@'localhost' identified by $MYSQL_ROOT_PASSWORD;
FLUSH PRIVILEGES;