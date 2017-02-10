# settings for installing magento2
# enter your magento2 directory
# example cd /var/www/html/magento2
# set ownership
sudo chown -R :www-data .
# Set permissions:
sudo find . -type d -exec chmod 770 {} \; && sudo find . -type f -exec chmod 660 {} \; && sudo chmod u+x bin/magento
# after installing 
sudo usermod -g www-data alexey
sudo chown -R alexey magento2
