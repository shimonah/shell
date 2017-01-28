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
