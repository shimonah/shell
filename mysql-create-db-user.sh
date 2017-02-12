
# creating magento databasemysql> CREATE USER 'mage'@'localhost' IDENTIFIED BY 'password';mysql> CREATE DATABASE magento_dev;mysql> GRANT ALL PRIVILEGES ON magento_dev.* TO 'mage'@'localhost';
