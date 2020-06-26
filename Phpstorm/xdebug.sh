#install xdebug for php 7.0
sudo apt-get install php-xdebug
#check for installing changes
php -m
#restart server
sudo service apache2 restart

#edit file
nano /etc/php/7.0/mods-available/xdebug.ini
#add this line after zend_extension=xdebug.so
xdebug.remote_enable=on
xdebug.remote_connect_back=1
xdebug.remote_port = 9000
xdebug.remote_autostart=1
xdebug.scream = 0
xdebug.cli_color = 1
xdebug.show_local_vars = 1
xdebug.idekey=XDEBUG_ECLIPSE
