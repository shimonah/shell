# Auto install Lamp server with PHP version 7.1
sudo apt update
# Install Apache2
sudo apt install -y apache2
# Enabling mod_rewite
sudo a2enmod rewrite
sudo systemctl restart apache2
# Installing PHP 7.1
# Adding repository
sudo add-apt-repository ppa:ondrej/php
sudo apt update
sudo apt install -y php7.1 php7.1-common
# Install the additional packages
sudo apt install -y php7.1-curl php7.1-xml php7.1-zip php7.1-gd php7.1-mysql php7.1-mbstring
# Test PHP version
php -v
sudo systemctl restart apache2
#Installing MySQL
sudo apt install -y mysql-server
# Provide a new mysql root password when asked. Then restart the server
sudo systemctl restart apache2
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
#
sudo adduser $USER www-data
chown $USER:www-data -R /var/www/html
chmod -R 775 /var/www/html
# Notice
echo '
Things you must do yourself:
Keep this tab for notice and open a new one Ctr+Alt+T
# Configure apache2 file
sudo nano /etc/apache2/mods-available/dir.conf
# Write 'index.php' at first place
<IfModule mod_dir.c>
        DirectoryIndex index.php index.html index.cgi index.pl index.xhtml inde$
</IfModule>
# Configure another apache2 file
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
# After installing go into php.ini file and turn
# short_open_tag = On display_errors = On display_startap_errors = On
# Restart Apache2
sudo systemctl restart apache2
# Enjoy!
';
