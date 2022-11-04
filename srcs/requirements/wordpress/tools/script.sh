#!/bin/sh
apt update -y
apt upgrade -y
apt install curl php-fpm php-mysql -y
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp 
mkdir -p /var/www/html
sed -i -e 's/listen =.*/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf
wp core download --path="/var/www/html"  --allow-root
wp config create --dbname=$MYSQL_DATABASE --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD --dbhost=$MYSQL_host --path=/var/www/html --allow-root --skip-check --extra-php <<PHP
define('WP_REDIS_PORT', 6379);
define('WP_REDIS_HOST', 'redis');
define('WP_REDIS_DISABLED', false);
PHP
echo "start " $MYSQL_DATABASE $MYSQL_USER $MYSQL_PASSWORD $MYSQL_host "   end"
wp core install --url=$url --title=$title --admin_user=$admin_user --admin_password=$admin_password --admin_email=$admin_email --allow-root --path=/var/www/html
wp plugin install redis-cache --path=/var/www/html --allow-root
wp plugin activate redis-cache --path=/var/www/html --allow-root
wp redis enable --path=/var/www/html --allow-root
mkdir -p /run/php
php-fpm7.3 -F