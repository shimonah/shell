# This code for Ubuntu 16.04 LTS
# Easy installing
sudo apt update
sudo apt install lamp-server^

# From the Ubuntu 16.04 can use 'apt' command in place of the traditional 'apt-get' and 'apt-cache'

# Installing Apache2
sudo apt install apache2

# Installing PHP 7.0
# Ubuntu 16.04's PHP packages now default to v7.0. 
sudo apt install -y php7.0 libapache2-mod-php7.0 php7.0 php7.0-common php7.0-gd php7.0-mysql php7.0-mcrypt php7.0-curl php7.0-intl php7.0-xsl php7.0-mbstring php7.0-zip php7.0-bcmath php7.0-iconv

# PHP 5.6 
sudo add-apt-repository ppa:ondrej/php
# If you get an error here, you need to install python-software-properties first (and then do the line above again):
sudo apt update
sudo apt install python-software-properties
# Update with new packages
sudo apt update
# List your current PHP packages
dpkg -l | grep php | tee packages.txt
# Depending on how you use PHP with the web server, you will probably need to turn the web server off.
# If you have version of PHP that you don't need
sudo apt-get purge php7.0 php7.0-common
# Install php 5.6
sudo apt -y install php5.6 php5.6-mcrypt php5.6-mbstring php5.6-curl php5.6-cli php5.6-mysql php5.6-gd php5.6-intl php5.6-xsl php5.6-zip
# Check
php -v

# Installing MySQL
sudo apt install mysql-server

# Installing phpMyAdmin
sudo apt install phpmyadmin php-mbstring php-gettext
