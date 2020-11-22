#!/bin/bash

# apache, mariadb, phpmyadmin

echo "> Installing apache webserver"
sudo apt install apache2 -y
sudo apt install php libapache2-mod-php -y

echo "> Installing mariadb database"
sudo apt install mariadb-server -y
sudo mysql_secure_installation
sudo apt install php-mysql -y

echo "> Installing phpmyadmin"
sudo apt install phpmyadmin -y
sudo echo "Include /etc/phpmyadmin/apache.conf" >> /etc/apache2/apache2.conf
sudo ln -s /usr/share/phpmyadmin /var/www/html

# restarting webserver and database
echo "> Almost there..."
sudo service apache2 restart
sudo systemctl restart mariadb

echo "Installed"
