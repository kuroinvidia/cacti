#!/bin/bash
apt update
apt install mariadb-server mariadb-client -y
mysql_secure_installation
cp 50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
systemctl restart mariadb
apt install apache2 php php-mysql php-snmp -y
apt install cacti snmpd -y
cp snmpd.conf /etc/snmp/snmpd.conf

$ip
$rocommunity

echo 'Your Server IP!!!'
read -p 'IP Address Cacti : ' ip
sed -i "s+192.168.55.3+$ip+g" /etc/snmp/snmpd.conf

echo 'Your Rocommunity!!'
read -p 'Rocommunity : ' rocommunity
sed -i "s+alice+$rocommunity+g" /etc/snmp/snmpd.conf

#admin is password you can changes it
echo -e "\n \n admin \n admin \n"
mysql -u root -p -D cacti -e "update user_auth set password=md5('admin') where username='admin';"
