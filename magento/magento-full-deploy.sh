#
echo "Automatic installation of latest Magento 2 version"
read -p "Proceed? (y/n) " answer

if [ "$answer" = "n" ]
then
	exit
else
# proceed installation
	if ! [ -x "$(command -v composer)" ]
	then
		echo "You need to install composer or give alias for for it 'composer'".
		exit
	fi

	read -p "Enter project name: " project

	echo "Enter MySQL root user password:"
	read -s root_pass

	composer create-project --repository-url=https://repo.magento.com/ magento/project-community-edition $project

	cd $project

	echo "Set permissions."

	sudo chown -R :www-data .

	sudo find . -type d -exec chmod 770 {} \; && sudo find . -type f -exec chmod 660 {} \; && sudo chmod u+x bin/magento

	mysql -u root -p$root_pass -e "create database $project";

	php bin/magento setup:install --base-url=http://$project.loc/ --db-host=localhost --db-name=$project --db-user=root --db-password=$root_pass \
	--admin-firstname=Admin --admin-lastname=Admin --admin-email=admin@admin.com --admin-user=admin --admin-password=admin123 --language=en_US \
	--currency=USD --timezone=America/Chicago --use-rewrites=1

	echo "Magento admin username: admin"
	echo "Magento admin password: admin123 "
	# installation condition end

	#CREATE FILE FOR APACHE VIRTUAL HOST

	CONFIG="\n
	<VirtualHost *:80>\n
	\t ServerName $project.loc \n
	\n
	\t DocumentRoot /var/www/html/$project \n
	\n
	\t <Directory "/var/www/html/$project"> \n
	\t \t AllowOverride All \n
	\t </Directory> \n
	\n
	</VirtualHost>
	\n"

	sudo touch /etc/apache2/sites-available/$project.conf

	echo
	echo "Writing file for virtual host:"
	echo

	echo -e $CONFIG | sudo tee -a /etc/apache2/sites-available/$project.conf

	#ENABLING FILE

	sudo a2ensite $project.conf

	echo -e "127.0.0.1 \t $project.loc" | sudo tee -a /etc/hosts

	sudo systemctl restart apache2

fi
