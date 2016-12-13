# This code for Ubuntu 14.04 LTS
sudo apt-get update

#Easy way to install Lamp server. For Ubuntu 14.04 LTS it install php 5.5.9
sudo apt-get install lamp-server^

#Separate installing each element

# PHP 5.6
# First of all php
sudo add-apt-repository ppa:ondrej/php5-5.
# If you get an error here, you need to install python-software-properties first (and then do the line above again):
sudo apt-get update
sudo apt-get install python-software-properties
# Update
sudo apt-get update
# Install php 5.6
sudo apt-get install php5
# Check
php -v

#PHP 7.0
sudo add-apt-repository ppa:ondrej/php
# If you get an error here, you need to install python-software-properties first (and then do the line above again):
sudo apt-get update
sudo apt-get install python-software-properties
# Update
sudo apt-get update
# Install
sudo apt-get install php
# Check
php -v
