# create folders:
sudo mkdir -p /srv/www/magento_dev/public_html/
sudo mkdir /srv/www/magento_dev/logs/
sudo mkdir /srv/www/magento_dev/ssl/

# directory 'public_html' is place where we hold magento files
# so we need to copy magento files there

# setting rights
sudo chown -R www-data:www-data public_html/
sudo chmod -R 755 public_html/var/
sudo chmod -R 755 public_html/media/
sudo chmod -R 755 public_html/app/etc/

# creating magento database
mysql> CREATE USER 'mage'@'localhost' IDENTIFIED BY 'password';
mysql> CREATE DATABASE magento_dev;
mysql> GRANT ALL PRIVILEGES ON magento_dev.* TO 'mage'@'localhost';

#checking user rights
mysql -u mage -p 'password'
mysql> SHOW DATABASES;

# Magento uses the mod_rewrite module for generating the URLs
# so we need to enable it if it's not
sudo a2enmod rewrite

# create a new apache2 virtual host file
sudo nano /etc/apache2/sites-available/magento.localhost.com

# configuration for our virtual domain:
VirtualHost *:80>
  ServerAdmin magento@locahost.com
  ServerName magento.localhost.com
  DocumentRoot /srv/www/magento_dev/public_html
  
  <Directory /srv/www/magento_dev/public_html/>
    Options Indexes FollowSymlinks MultiViews
    AllowOverride All
    Order allow,deny
    allow from all
  </Directory>
  ErrorLog /srv/www/magento_dev/logs/error.log
  LogLevel warn
</VirtualHost>

# Enable site and restart apache2
sudo a2ensite magento.localhost.com

# adding to hosts file
sudo nano /etc/hosts
192.168.36.1 magento.localhost.com

# restart apache2
sudo apache2ctl restart
