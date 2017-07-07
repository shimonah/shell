##
## How to create basic authentication for /var/www/html folder and phpmyadmin
##

# create file
sudo touch /etc/apache2/auth.conf

# edit this file "/etc/apache2/auth.conf"
sudo nano /etc/apache2/auth.conf

# add lines (this option looks for .htaccess files in this directories)
<Directory /var/www/html>
        Options Indexes FollowSymLinks
        AllowOverride All
</Directory>

<Directory /usr/share/phpmyadmin>
        Options Indexes FollowSymLinks
        AllowOverride All
</Directory>

# create .htaccess files in this directories
sudo touch /var/www/html/.htaccess
sudo touch /usr/share/phpmyadmin/.htaccess

# add this lines to files (code for all two files is same)
AuthType Basic
AuthName "Private Area"
AuthUserFile /var/www/html/.htpasswd
Require user username

# create .htpasswd file in each directory and enter password
sudo htpasswd -c .htpasswd (username)

# edit apache file
sudo nano /etc/apache2/apache2.conf

# and add this lines to "/etc/apache2/apache2.conf"
Include auth.conf

# restart apache server
sudo systemctl restart apache2
