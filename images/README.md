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

