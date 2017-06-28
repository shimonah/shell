#install xdebug for php 7.0
sudo apt-get install php-xdebug
#check for installing changes
php -m
#restart server
sudo service apache2 restart

#edit file
nano /etc/php/7.0/mods-available/xdebug.ini
#add this line
xdebug.show_error_trace = 1
