export DEBIAN_FRONTEND=noninteractive
apt update
apt install apache2 -y
cp ~/index.html /var/www/html/index.html
cp ~/000-default.conf /etc/apache2/sites-available/000-default.conf
service apache2 restart

#iptables -P INPUT DROP
#iptables -A INPUT -s 10.72.0.128/25 -m time --timestart 08:00 --timestop 21:00 -j ACCEPT
#iptables -A INPUT -s 10.72.1.0/24 -m time --timestart 03:00 --timestop 23:00 -j ACCEPT

#iptables -A INPUT -m state --state NEW -m recent --set --name PORTSCAN --rsource
#iptables -A INPUT -m state --state NEW -m recent --update --seconds 10 --hitcount 25 --name PORTSCAN --rsource -j DROP
#BELOM SELESAI
