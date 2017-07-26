# ERROR 3167 (HY000): The 'INFORMATION_SCHEMA.GLOBAL_VARIABLES' feature is disabled; see the documentation for 'show_compatibility_56'
# Connect to musql database via console and execute the command:

SET GLOBAL show_compatibility_56 = ON;
# or
sudo nano /etc/mysql/conf.d/mysql.cnf

#Then I added this section:
[mysqld]
show_compatibility_56 = ON
performance_schema
