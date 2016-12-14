# Auto install Lamp server with PHP version 7.1
sudo apt-get update
# Install Apache2
sudo apt-get install -y apache2
# Enabling mod_rewite
sudo a2enmod rewrite
sudo service apache2 restart
# Installing PHP 7.1
# Adding repository
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install -y php7.1 php7.1-common
# Install the additional packages
sudo apt-get install -y php7.1-curl php7.1-xml php7.1-zip php7.1-gd php7.1-mysql php7.1-mbstring
# Test PHP version
php -v
sudo service apache2 restart
#Installing MySQL
sudo apt-get install -y mysql-server
# Provide a new mysql root password when asked. Then restart the server
sudo service apache2 restart
# Install phpmyadmin
# goto to directory where phpMyAdmin will be installed
cd /usr/share
# Download the version you need
# check up here for latest versions https://www.phpmyadmin.net/
sudo wget https://files.phpmyadmin.net/phpMyAdmin/4.6.5.2/phpMyAdmin-4.6.5.2-all-languages.zip
# Unzip dowloaded file
sudo unzip phpMyAdmin-4.6.5.2-all-languages.zip
# Rename the folder
sudo mv phpMyAdmin-4.6.5.2-all-languages phpmyadmin
# Change premissions
sudo chmod -R 0755 phpmyadmin
# Notice
