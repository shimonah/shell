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
