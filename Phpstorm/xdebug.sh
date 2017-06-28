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
xdebug.remote_enable=on
xdebug.default_enable=on
xdebug.remote_autostart=off
xdebug.remote_port=9000
xdebug.remote_host=localhost
xdebug.profiler_enable_trigger=1
xdebug.profiler_output_name=xdebug-profile-cachegrind.out-%H-%R
xdebug.var_display_max_children = 128
xdebug.var_display_max_data = 4096
xdebug.var_display_max_depth = 128
xdebug.max_nesting_level = 500
xdebug.idekey=PHPSTORM
