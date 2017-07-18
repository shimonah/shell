# this line run cron evey 5 minutes and record result in var/log/cron.log
*/5 * * * * /usr/bin/php -f /var/www/html/magento_dir/cron.php >> /var/www/html/magento_dir/var/log/cron.log 2>&1

# this line run cron every minute and do not record result in var/log/cron.log
* * * * * /usr/bin/php -f /var/www/html/magento_dir/cron.php% >> /var/www/html/magento_dir/var/log/cron.log 2>&1
