
# enter mysql from command line where root is user
mysql -u root -p

# creating user 'mage' and 'magento_dev' database 
mysql> CREATE USER 'mage'@'localhost' IDENTIFIED BY 'password';
mysql> CREATE DATABASE magento_dev;
mysql> GRANT ALL PRIVILEGES ON magento_dev.* TO 'mage'@'localhost';
