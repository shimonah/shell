# This code for Ubuntu 14.04 LTS
sudo apt-get update

#Easy way to install Lamp server. For Ubuntu 14.04 LTS it install php 5.5.9 tha is no longer support with community
sudo apt-get install lamp-server^

#Separate installing each element

# Installing Apache2
sudo apt-get install apache2
# Enable mod_rewrite and restart apache2
sudo a2enmod rewrite
sudo service apache2 restart

# PHP 5.6
sudo apt-get update
sudo add-apt-repository ppa:ondrej/php
# Update with new packages
sudo apt-get update
# If you get an error here, you need to install python-software-properties first (and then do the line above again):
sudo apt-get update
sudo apt-get install python-software-properties
# Update
sudo apt-get update
# Install php 5.6
sudo apt-get -y install php5.6 php5.6-mcrypt php5.6-mbstring php5.6-curl php5.6-cli php5.6-mysql php5.6-gd php5.6-intl php5.6-xsl php5.6-zip
# Check
php -v

#PHP 7.0
sudo apt-get update
sudo add-apt-repository ppa:ondrej/php
# update with new packages
sudo apt-get update
# If you get an error here, you need to install python-software-properties first (and then do the line above again):
sudo apt-get update
sudo apt-get install python-software-properties
# Update
sudo apt-get update
# Install
sudo apt-get install -y php7.0 libapache2-mod-php7.0 php7.0 php7.0-common php7.0-gd php7.0-mysql php7.0-mcrypt php7.0-curl php7.0-intl php7.0-xsl php7.0-mbstring php7.0-zip php7.0-bcmath php7.0-iconv
# Check
php -v

# Install MySQL (5.5), mysql module for PHP and PDO stuff
sudo apt-get install mysql-server
# Provide a new mysql root password when asked. Then restart the server
sudo service apache2 restart

# Install phpmyadmin
sudo apt-get install phpmyadmin
sudo php5enmod mcrypt
sudo service apache2 restart
# Select “apache2” when asked, select with SPACE and confirm with ENTER. 
# Press ENTER when asked for auto-configuration and provide a new password 
# for the phpmyadmin root user and mysql root passwords when asked for password 
# (You can use the same for this, to keep things simple).
