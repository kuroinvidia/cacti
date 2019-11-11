# linux
# https://github.com/kuroinvidia

#Cacti
i need you to know before you run script cacti.sh
you need to install package dos2unix
If you're not using Git, you simply need to convert these affected files/scripts back into Unix-like line endings (LF), either by

apt install dos2unix -y
dos2unix cacti.sh

then you can ran bash with it! You just need run bash dos2unix.sh and all be fine

#Wordpress
you just need run bash lamp.sh
for wordpress you just need configure the DNS or bind in /etc/bind9
and you just need to configure the ServerName in these wordpress.conf
dont forget about resolv.conf too guys
