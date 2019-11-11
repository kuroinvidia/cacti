#!/bin/bash
apt update
apt install dos2unix mariadb-server mariadb-client -y
mysql_secure_installation
wget https://github.com/kuroinvidia/linux/raw/master/50-server.cnf
cp 50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
systemctl restart mariadb
apt install apache2 php php-mysql php-snmp -y
apt install cacti snmpd -y
echo -e "\n \n admin \n admin \n"
mysql -u root -p -D cacti -e "update user_auth set password=md5('admin') where $

