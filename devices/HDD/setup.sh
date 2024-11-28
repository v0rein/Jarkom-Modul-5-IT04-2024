export DEBIAN_FRONTEND=noninteractive
apt update
apt install bind9 netcat -y
cp ~/named.conf.options /etc/bind/named.conf.options

service bind9 restart

#iptables -P INPUT DROP
#iptables -A INPUT -s 10.72.2.11 -j ACCEPT
#NOTES 10.72.2.11 adalah alamat IP dari fairy (DHCP)
