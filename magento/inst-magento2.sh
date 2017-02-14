#add user to www-data group where 'alexey' is username
sudo usermod -a -G www-data alexey

# go to
cd /etc/apache2/envvars

# change to your username
# where 'alexey' is username and 'www-data' is group name
export APACHE_RUN_USER=alexey
export APACHE_RUN_GROUP=www-data

# apache2 magento2.conf file settings
 <Directory "/var/www/html/magento2">
                AllowOverride All
 </Directory>
 
# settings for installing magento2
# enter your magento2 directory
# example cd /var/www/html/magento2
# set ownership
sudo chown -R :www-data .
# Set permissions:
sudo find . -type d -exec chmod 770 {} \; && sudo find . -type f -exec chmod 660 {} \; && sudo chmod u+x bin/magento
# go to
cd ..
# set permissions to magento2 directory
sudo chown -R alexey:www-data magento2

#Creating user and database to magento2
# enter mysql from command line where root is user
mysql -u root -p

# creating user 'mage' and 'magento_dev' database 
mysql> CREATE USER 'mage'@'localhost' IDENTIFIED BY 'password';
mysql> CREATE DATABASE magento_dev;
mysql> GRANT ALL PRIVILEGES ON magento_dev.* TO 'mage'@'localhost';
