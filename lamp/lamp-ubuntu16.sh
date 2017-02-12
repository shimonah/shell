# This code for Ubuntu 16.04 LTS
# Easy installing
sudo apt update
sudo apt install lamp-server^

# From the Ubuntu 16.04 can use 'apt' command in place of the traditional 'apt-get' and 'apt-cache'

# Installing Apache2
sudo apt install apache2

# Installing PHP 7.0
# Ubuntu 16.04's PHP packages now default to v7.0. 
sudo apt install -y php7.0 php7.0-common
sudo apt install -y libapache2-mod-php7.0 php7.0-gd php7.0-mysql php7.0-mcrypt php7.0-curl php7.0-intl php7.0-xsl php7.0-mbstring php7.0-zip php7.0-bcmath php7.0-iconv
# After installing go into php.ini file and turn
# short_open_tag = On display_errors = On display_startap_errors = On

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
# After installing go into php.ini file and turn
# short_open_tag = On display_errors = On display_startap_errors = On

# Installing MySQL
sudo apt install mysql-server

# Install phpmyadmin
# goto to directory where phpMyAdmin will be installed
cd /usr/share
# Download the version you need
# check up here for latest versions https://www.phpmyadmin.net/
sudo wget https://files.phpmyadmin.net/phpMyAdmin/4.6.5.2/phpMyAdmin-4.6.5.2-all-languages.zip
# Unzip dowloaded file
unzip phpMyAdmin-4.6.5.2-all-languages.zip
# Rename the folder
mv phpMyAdmin-4.6.5.2-all-languages phpmyadmin
# Change premissions
chmod -R 0755 phpmyadmin
# Configure apache2 file
sudo nano /etc/apache2/sites-available/000-default.conf
# Uncommet the line with ServerName and write:
ServerName localhost
# Anywhere after "DocumentRoot /var/www/html" insert these line:
Alias /phpmyadmin "/usr/share/phpmyadmin/"
<Directory "/usr/share/phpmyadmin/">
     Order allow,deny
     Allow from all
     Require all granted
</Directory>
# Restart Apache2
sudo service apache2 restart
# Enjoy!
