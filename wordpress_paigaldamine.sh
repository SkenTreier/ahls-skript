WP=$(dpkg-query -W -f='${Status}' wordpress 2>/dev/null | grep -c 'ok installed')
if [ $WP -eq 0 ]; then
	echo "Paigaldame Wordpress"
	wget https://wordpress.org/latest.tar.gz
	tar xzvf latest.tar.gz
	cp wordpress/wp-config-sample.php wordpress/wp-config.php
	rm -rf latest.tar.gz
	apt install wordpress -y
	echo "WordPress on paigaldatud"
elif [ $WP -eq 1 ]; then
	echo "Wordpress on juba paigaldatud"
fi
