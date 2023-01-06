WP=$(dpkg-query -W -f='${Status}' wordpress 2>/dev/null | grep -c 'ok installed')
if [ $WP -eq 0 ]; then
	echo "Paigaldame Wordpress"
	wget https://wordpress.org/latest.tar.gz
	mkdir /var/www/html/wordpress
	tar xzvf latest.tar.gz --strip-components=1 -C /var/www/html/wordpress
	cp /var/www/html/wordpress/wp-config-sample.php /var/www/html/wordpress/wp-config.php
	rm -rf latest.tar.gz
	sed -i "s/database_name_here/wpdatabase/g" /var/www/html/wordpress/wp-config.php
	sed -i "s/username_here/wpuser/g" /var/www/html/wordpress/wp-config.php
	sed -i "s/password_here/qwerty/g" /var/www/html/wordpress/wp-config.php
	echo "WordPress on paigaldatud"
elif [ $WP -eq 1 ]; then
	echo "Wordpress on juba paigaldatud"
fi
