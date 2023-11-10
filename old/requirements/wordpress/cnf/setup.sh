# mv /wordpress/* /var/www/html
# service php-fpm7.3 start
# service php-fpm7.3 stop
# cd  /var/www/html 
# /wp --allow-root config create --dbuser=$DB_USER --dbpass=$DB_PASS --dbhost=mariadb --dbname=wordpress --skip-check --extra-php <<PHP
# define('WP_SITEURL', 'https://$VIRTUALBOX_IP');
# PHP

# while true; do
#     /wp --allow-root core install --url="https://$VIRTUALBOX_IP" --title=inception --admin_user=$WP_USER1 --admin_password=$WP_USER1_PASS --admin_email="$WP_USER1@inception.com" && /wp --allow-root user  create  $WP_USER2 $WP_USER2@inception.com  --user_pass=$WP_USER2_PASS
#     if [ $? -eq 0 ]; then
#         break
#     fi
#     sleep 1
# done

# php-fpm7.3 -F

'/wp --allow-root config create --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD --dbhost=mariadb --dbname=wordpress --skip-check'

'/wp --allow-root core install --url={{ ansible_default_ipv4.address }}\
 --title=inception --admin_user=$WP_USER --admin_password=$WP_PASSWORD \
 --admin_email=youssef@ynoam.com --exec="define('WP_SITEURL', '{{ ansible_default_ipv4.address }}');"'
