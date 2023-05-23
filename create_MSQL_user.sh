#!/bin/bash

MYSQL_ROOT_PASSWORD='EmersonFitipaldi'
MYSQL_USER='my_user'
MYSQL_USER_PASSWORD='EmersonFitipaldi'

# Create the MySQL user
mysql -u root -p$MYSQL_ROOT_PASSWORD -e "CREATE USER '$MYSQL_USER' IDENTIFIED BY '$MYSQL_USER_PASSWORD';"

# Grant all privileges to the user
mysql -u root -p$MYSQL_ROOT_PASSWORD -e "GRANT ALL PRIVILEGES ON *.* TO '$MYSQL_USER' WITH GRANT OPTION;"

# Flush privileges
mysql -u root -p$MYSQL_ROOT_PASSWORD -e "FLUSH PRIVILEGES;"

echo "MySQL user created and granted all privileges successfully!"
