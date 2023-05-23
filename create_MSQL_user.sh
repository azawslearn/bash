#!/bin/bash

MYSQL_ROOT_PASSWORD='YourRootPassword'
MYSQL_USER='root'
MYSQL_USER_PASSWORD='UserPassword'

# Create the MySQL user
mysql -u root -p$MYSQL_ROOT_PASSWORD -e "CREATE USER '$MYSQL_USER'@'localhost' IDENTIFIED BY '$MYSQL_USER_PASSWORD';"

# Grant all privileges to the user
mysql -u root -p$MYSQL_ROOT_PASSWORD -e "GRANT ALL PRIVILEGES ON *.* TO '$MYSQL_USER'@'localhost' WITH GRANT OPTION;"

# Flush privileges
mysql -u root -p$MYSQL_ROOT_PASSWORD -e "FLUSH PRIVILEGES;"

echo "MySQL user created and granted all privileges successfully!"
