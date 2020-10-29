setup:
	sudo apt-get install apache2 -y

php:
	sudo apt-get install php -y

mysql:
	sudo apt-get install mariadb-server php-mysql -y
	sudo service apache2 restart

build:
	sudo rm /var/www/html/index.*
	sudo cp build_scripts/php/index.php /var/www/html/index.php

