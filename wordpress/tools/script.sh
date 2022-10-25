#!/bin/sh

apt-get update -y
apt-get upgrade -y
apt-get install curl php-fpm php-mysql -y
if [[ -f /usr/local/bin/wp ]]
then
service php7.3-fpm start
service php7.3-fpm status
tail -f > /dev/null
else
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp 
mkdir -p /var/www/html
sed -i -e 's/listen =.*/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf
wp core download --path="/var/www/html"  --allow-root
wp config create --dbname=my_database --dbuser=EVBLOOD --dbpass=123 --dbhost=mariadb --path=/var/www/html --allow-root --skip-check
wp core install --url=https://localhost --title=inception --admin_user=EVBLOOD --admin_password=123 --admin_email=my@email.com --allow-root --path=/var/www/html
# service php7.3-fpm restart
service php7.3-fpm start
service php7.3-fpm status
# php7.3-fpm -F
tail -f > /dev/null
fi