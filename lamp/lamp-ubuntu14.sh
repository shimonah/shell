# This code for Ubuntu 14.04 LTS
sudo apt-get update

#Easy way to install Lamp server. For Ubuntu 14.04 LTS it install php 5.5.9 that is no longer supports
sudo apt-get install lamp-server^

#Separate installing of each element

# Installing Apache2
sudo apt-get install apache2
# Enable mod_rewrite and restart apache2
sudo a2enmod rewrite
sudo service apache2 restart
# Configure apache2 file
sudo nano /etc/apache2/mods-available/dir.conf
# Write 'index.php' at first place
<IfModule mod_dir.c>
        DirectoryIndex index.php index.html index.cgi index.pl index.xhtml inde$
</IfModule>
# Restart Apache2
sudo service apache2 restart


# If you already have installed PHP version that you don't need:
# List your current php packages
dpkg -l | grep php | tee packages.txt
# Choose thoose that you don't need and purge for example PHP 5.6
sudo apt-get purge php5.6 php5.6-common
# And then install the version you need with packages
# After installing your version of PHP may need to reboot apache2
# For this use
a2dissite 'name of your site'
sudo service apache2 reload
a2ensite 'name of you site'
sudo service apache2 reload
sudo service aapche2 restart

# PHP 5.6
sudo add-apt-repository ppa:ondrej/php
# If you get an error here, you need to install python-software-properties first (and then do the line above again):
sudo apt-get update
sudo apt-get install python-software-properties
# Update with new packages
sudo apt-get update
# Install php 5.6
sudo apt-get install -y php5.6 php5.6-common
sudo apt-get install -y php5.6-mcrypt php5.6-mbstring php5.6-curl php5.6-cli php5.6-mysql php5.6-gd php5.6-intl php5.6-xsl php5.6-zip
# Check
php -v

#PHP 7.0 
sudo add-apt-repository ppa:ondrej/php
# If you get an error here, you need to install python-software-properties first (and then do the line above again):
sudo apt-get update
sudo apt-get install python-software-properties
# Update with new packages
sudo apt-get update
# Install
sudo apt-get install -y php7.0 php7.0-common
sudo apt-get install -y libapache2-mod-php7.0 php7.0-gd php7.0-mysql php7.0-mcrypt php7.0-curl php7.0-intl php7.0-xsl php7.0-mbstring php7.0-zip php7.0-bcmath php7.0-iconv
# Check
php -v

# Install MySQL (5.5)
sudo apt-get install mysql-server
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
