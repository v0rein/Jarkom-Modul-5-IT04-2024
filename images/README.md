# DOKUMENTASI JARKOM PRAKTIKUM 5

## ANGGOTA

| Nama                        | NRP        |
| --------------------------- | ---------- |
| Athalla Barka Fadhil        | 5027231018 |
| Jody Hezekiah Tanasa Sagala | 5027221050 |

## TOPOLOGY
![alt text](image-1.png)

## PEMBAGIAN IP
![alt text](image.png)


## NewEridu
```
auto eth0
iface eth0 inet dhcp

auto eth1
iface eth1 inet static
  address 10.72.0.1
  netmask 255.255.255.252
  
auto eth2
iface eth2 inet static
  address 10.72.0.5
  netmask 255.255.255.252

#A6
post-up route add -net 10.72.2.0 netmask 255.255.255.248 gw 10.72.0.2

#A3
post-up route add -net 10.72.0.8 netmask 255.255.255.248 gw 10.72.06

#A8
post-up route add -net 10.72.2.64 netmask 255.255.255.192 gw 10.72.0.2

#A7
post-up route add -net 10.72.2.8 netmask 255.255.255.248 gw 10.72.0.2

#A4
post-up route add -net 10.72.0.128 netmask 255.255.255.128 gw 10.72.0.6

#A5
post-up route add -net 10.72.1.0 netmask 255.255.255.0 gw 10.72.0.6

#A9
post-up route add -net 10.72.2.128 netmask 255.255.255.252 gw 10.72.0.2
```
## HDD (DNS)
```
auto eth0
iface eth0 inet static
  address 10.72.2.10
  netmask 255.255.255.248
  gateway 10.72.2.9

up echo nameserver 192.168.122.1 > /etc/resolv.conf
```

## Fairy (DHCP)
```
auto eth0
iface eth0 inet static
  address 10.72.2.11
  netmask 255.255.255.248
  gateway 10.72.2.9

up echo nameserver 192.168.122.1 > /etc/resolv.conf

#A8
post-up route add -net 10.72.2.16 netmask 255.255.255.192 gw 10.72.2.9

#A4
post-up route add -net 10.72.0.128 netmask 255.255.255.128 gw 10.72.2.9
```

