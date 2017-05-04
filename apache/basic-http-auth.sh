# edit apache file
sudo nano /etc/apache2/apache2.conf

# add lines
<Directory /var/www/html>
        Options Indexes FollowSymLinks
        AllowOverride All
</Directory>

# go to
cd /var/www/html

# create login/password
sudo htpasswd -c .htpasswd (username)
# you need to enter password for username(login)

# then create file
touch .htaccess

# edit file, add lines
AuthType Basic
AuthName "Private Area"
AuthUserFile /var/www/html/.htpasswd
Require user (username)

# restart apache server
sudo systemctl restart apache2
