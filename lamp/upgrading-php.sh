# Upgrading you current version of PHP to PHP 7.1

# Adding repository
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
# If you get a command not found error for add-apt-repository, you can install it from:
sudo apt-get install software-properties-common python-software-properties
# List your current PHP packages
dpkg -l | grep php | tee packages.txt
# Depending on how you use PHP with the web server, you will probably need to turn the web server off. 
# After that, run the following:
sudo apt-get install php7.1 php7.1-common
# Install the additional packages
sudo apt-get install php7.1-curl php7.1-xml php7.1-zip php7.1-gd php7.1-mysql php7.1-mbstring
# Test PHP version
php -v
# Remove old packages 
# If you have another version of PHP
# After 'php' without spacing enter your version of PHP (e.g. 'php5.6 php5.6-common')
sudo apt-get purge php7.0 php7.0-common
# After installing go into php.ini file and turn
# short_open_tag = On display_errors = On display_startap_errors = On
