#heggland

#install apache webserver
sudo apt install php libapache2-mod-php -y
sudo apt install apache2 -y

#install mariadb database
sudo apt install mariadb-server -y
sudo mysql_secure_installation
sudo apt install php-mysql -y

#install phpmyadmin database gui
sudo apt install phpmyadmin -y
sudo echo "Include /etc/phpmyadmin/apache.conf" >> /etc/apache2/apache2
sudo ln -s /usr/share/phpmyadmin /var/www/html
sudo service apache2 restart
