# DOKUMENTASI JARKOM PRAKTIKUM 5

## ANGGOTA

| Nama                        | NRP        |
| --------------------------- | ---------- |
| Athalla Barka Fadhil        | 5027231018 |
| Jody Hezekiah Tanasa Sagala | 5027221050 |

## NOTES
Config ada di folder devices, tinggal masukin aja semuanya ke /root
kalo gaada confignya di folder devices, berarti emg gaada confignya

## TOPOLOGY
![alt text](images/image-1.png)

## PEMBAGIAN IP
![alt text](images/image.png)


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

## SixStreet (DHCP Relay)
```
auto eth0
iface eth0 inet static
  address 10.72.0.2
  netmask 255.255.255.252
  gateway 10.72.0.1

auto eth1
iface eth1 inet static
  address 10.72.2.1
  netmask 255.255.255.248

auto eth2
iface eth2 inet static
  address 10.72.2.9
  netmask 255.255.255.248

up echo nameserver 192.168.122.1 > /etc/resolv.conf

#A8
post-up route add -net 10.72.2.64 netmask 255.255.255.192 gw 10.72.2.3

#A9
post-up route add -net 10.72.2.128 netmask 255.255.255.252 gw 10.72.2.2

#A4
post-up route add -net 10.72.0.128 netmask 255.255.255.128 gw 10.72.0.1
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

## OuterRing (DHCP Relay)
```
auto eth0
iface eth0 inet static
  address 10.72.2.3
  netmask 255.255.255.248
  gateway 10.72.2.1

auto eth1
iface eth1 inet static
  address 10.72.2.65
  netmask 255.255.255.192

up echo nameserver 192.168.122.1 > /etc/resolv.conf

#A9
post-up route add -net 10.72.2.128 netmask 255.255.255.252 gw 10.72.2.2

#A1
post-up route add -net 10.72.0.0 netmask 255.255.255.252 gw 10.72.2.1

#A7
post-up route add -net 10.72.2.8 netmask 255.255.255.248 gw 10.72.2.1
```

## Burnice (Client)
```
auto eth0
iface eth0 inet dhcp

#Hollowzero
post-up route add -net 10.72.2.128 netmask 255.255.255.252 gw 10.72.2.65

#A1
post-up route add -net 10.72.0.0 netmask 255.255.255.252 gw 10.72.2.65
```

## Caesar (Client)
```
auto eth0
iface eth0 inet dhcp

#Hollowzero
post-up route add -net 10.72.2.128 netmask 255.255.255.252 gw 10.72.2.65

#A1
post-up route add -net 10.72.0.0 netmask 255.255.255.252 gw 10.72.2.65
```

## LuminaSquare (DCHP Relay)
```
auto eth0
iface eth0 inet static
  address 10.72.0.6
  netmask 255.255.255.252
  gateway 10.72.0.5

auto eth1
iface eth1 inet static
  address 10.72.0.9
  netmask 255.255.255.248
 
auto eth2
iface eth2 inet static
  address 10.72.1.1
  netmask 255.255.255.0

up echo nameserver 192.168.122.1 > /etc/resolv.conf

#A1
post-up route add -net 10.72.0.0 netmask 255.255.255.252 gw 10.72.0.5

#A4
post-up route add -net 10.72.0.128 netmask 255.255.255.128 gw 10.72.0.11

#A7
post-up route add -net 10.72.2.8 netmask 255.255.255.248 gw 10.72.0.5
```

## Jane (Client)
```
auto eth0
iface eth0 inet dhcp
```

## Policeboo (Client)
```
auto eth0
iface eth0 inet dhcp
```

## HIA (Web Server)
```
auto eth0
iface eth0 inet static
  address 10.72.0.10
  netmask 255.255.255.248
  gateway 10.72.0.9
 
up echo nameserver 192.168.122.1 > /etc/resolv.conf
```

## HollowZero (Web Server)
```
auto eth0
iface eth0 inet static
  address 10.72.2.130
  netmask 255.255.255.252
  gateway 10.72.2.129

up echo nameserver 192.168.122.1 > /etc/resolv.conf

#A1
post-up route add -net 10.72.0.0 netmask 255.255.255.252 gw 10.72.2.129
```

## BalletTwins (DHCP Relay)
```
auto eth0
iface eth0 inet static
  address 10.72.0.11
  netmask 255.255.255.248
  gateway 10.72.0.9
 
auto eth1
iface eth1 inet static
  address 10.72.0.129
  netmask 255.255.255.128

up echo nameserver 192.168.122.1 > /etc/resolv.conf
 
#A2
post-up route add -net 10.72.0.4 netmask 255.255.255.252 gw 10.72.0.9

#A1
post-up route add -net 10.72.0.0 netmask 255.255.255.252 gw 10.72.0.9

#A7
post-up  route add -net 10.72.2.8 netmask 255.255.255.248 gw 10.72.0.9
```

## Ellen (Client)
```
auto eth0
iface eth0 inet dhcp 
```

## Lycaon (Client)
```
auto eth0
iface eth0 inet dhcp 
```

## ScootOutpost
```
auto eth0
iface eth0 inet static
  address 10.72.2.2
  netmask 255.255.255.248
  gateway 10.72.2.1

auto eth1
iface eth1 inet static
  address 10.72.2.129
  netmask 255.255.255.252

up echo nameserver 192.168.122.1 > /etc/resolv.conf

#A2
post-up route add -net 10.72.0.4 netmask 255.255.255.252 gw 10.72.2.1

#A8
post-up route add -net 10.72.2.16 netmask 255.255.255.192 gw 10.72.2.3

#A1
post-up  route add -net 10.72.0.0 netmask 255.255.255.252 gw 10.72.2.1
```

# TUTORIAL
## PREREQUESITE

1. UDAH SUBNET DAN SUDAH ROUTING DAN UDAH BISA PING KE SEMUA NODES BARU LANJUT CONFIG 
2. Setup nameserver 192.168.122.1nya, masuk web console NewEridu trus run setup.sh
![alt text](images/image-10.png)

jangan lupa buat setiap nodes harus ada nameserver kyk dibawah ini
![alt text](images/image-11.png)

4. coba ping x.com dari NewEridu,SixStreet, OuterRing, Fairy
![alt text](images/image-12.png)
![alt text](images/image-14.png)
![alt text](images/image-13.png)
## CONFIG DHCP
Disini tutorial buat config DHCP 

1. Jangan lupa buat ganti IP di `isc-dhcp-relay` ini pake IP dari DHCP Server (Fairy)
untuk `isc-dhcp-relay` itu sama semua untuk OuterRing, SixStreet, LuminaSquare, BalletTwins
![alt text](images/image-77.png)
1. Copy config dari folder devices buat NewEridu, SixStreet, OuterRing, Fairy
2. Masuk ke web console Fairy trus run setup.sh
![alt text](images/image-2.png)

3. Masuk web console SixStreet trus run setup.sh trus biar pasti, run `service isc-dhcp-relay restart`
![alt text](images/image-3.png)


4. Masuk web console OuterRing trus run setup.sh trus biar pasti, run `service isc-dhcp-relay restart`
![alt text](images/image-4.png)
![alt text](images/image-15.png)


6. Coba masuk web console Fairy trus coba
`service isc-dhcp-server restart`
![alt text](images/image-6.png)
7. Coba restart clientnya, di stop trus start lagi misal si Caesar trus masuk web consolenya
![alt text](images/image-8.png)
trus coba liat juga di web console Fairy
`tail -f /var/log/syslog`
![alt text](images/image-9.png)
disini keliatan ada log ip 10.72.2.69 berhasil di lease ke Caesar
8. Kalo kyk gini udah bener berarti DHCPnya

## NO 2 FAIRY
1. web console Fairy trus cat setup.sh
copy yang command iptables paling bawah
![alt text](images/image-16.png)

2. cek iptables dulu (blom ada apa2)
![alt text](images/image-24.png)


3. ![alt text](images/image-19.png)
`iptables -A INPUT -p icmp --icmp-type echo-request -j DROP`
 ![alt text](images/image-18.png)

 4. fairy bisa ping ScootOutpost (10.72.2.129)
  ![alt text](images/image-22.png)

  tapi ScootOutpost gabisa ping fairy (10.72.2.11)
  ![alt text](images/image-23.png)

## NO 3 HDD
pasitiin HDD ini bisa ping ke semua nodes 

1. web console HDD trus run setup.sh

![alt text](images/image-25.png)

2. liat command iptables dipaling bawah
![alt text](images/image-26.png)

3. cek aturan sekarang (blom ada apa2) 
`iptables -L INPUT -n --line-numbers`
![alt text](images/image-27.png)

4. Bikin aturan untuk blok semua request 
`iptables -A INPUT DROP`
![alt text](images/image-28.png)

5. lalu buat aturan agar hanya Fairy (10.72.2.11) yang bisa akses
`iptables -A INPUT -s 10.72.2.11 -j ACCEPT`
![alt text](images/image-29.png)

6. fairy bisa ping ke HDD
![alt text](images/image-30.png)
tapi nodes lain gabisa ping ke HDD
![alt text](images/image-31.png)

7. test pake netcat 
![alt text](images/image-45.png)
![alt text](images/image-48.png)
![alt text](images/image-46.png)
terlihat bahwa fairy bisa ping nc tapi yang lain gabisa ping nc

## NO 4 HollowZero
1. masuk web console HollowZero trus run setup.sh
![alt text](images/image-32.png)

2. trus cek buat nyoba webservernya
![alt text](images/image-50.png)

3. cek command iptables paling bawah
![alt text](images/image-34.png)

4. `date` buat liat tanggal sekarang, trus jalanin 3 command iptables dibawah
  ![alt text](images/image-35.png)

5. Caesar ga bisa ping ke HollowZero soalnya sekarang hari sabtu 
![alt text](images/image-36.png)

6. ganti aturan agar sabtu bisa diakses
![alt text](images/image-37.png)
drop aturan no 2 (yang 10.72.2.64 pokoknya)
`iptables -D INPUT 2`
`iptables -A INPUT -s 10.72.2.64/26 -m time --weekdays Sat -j ACCEPT`
kita allow hari sabtu
![alt text](images/image-38.png)

7. Caesar bisa ping dan curl ke HollowZero
![alt text](images/image-49.png)
## NO 5 HIA
1. web console HIA trus run setup.sh
![alt text](images/image-40.png)
2. cek buat nyoba webservernya
![alt text](images/image-52.png)
3. jalanin iptables dibawah
![alt text](images/image-42.png)
4. 
    a.  `iptables -P INPUT DROP`
    b. `iptables -A INPUT -s 10.72.0.128/25 -m time --timestart 08:00 --timestop 21:00 -j ACCEPT`
    c. `iptables -A INPUT -s 10.72.1.0/24 -m time --timestart 03:00 --timestop 23:00 -j ACCEPT`
![alt text](images/image-43.png)
5. Lycaon bisa akses karena sekarang masih masuk kedalam waktu yang diperbolehkan
![alt text](images/image-51.png)

## NO 6 HIA PORTSCAN
1. masuk web console HIA trus cat setup.sh
run iptables dari "Create a chain for handling port scanning"
![alt text](images/image-53.png)
2. cek web console policeboo trus ping sama curl ke HIA
![alt text](images/image-54.png)
![alt text](images/image-58.png)
masih bisa kan, coba kita nmap ke HIA
![alt text](images/image-55.png)
![alt text](images/image-56.png)
gabisa ping
![alt text](images/image-57.png)
curl jg gabisa

## NO 7 HollowZero
1. Masuk web console HollowZero trus cat setup.sh
![alt text](images/image-63.png)
run iptables yang bawah "Allow 2 active connections"
![alt text](images/image-64.png)
2. coba testing pake parallel di client bebas, antara Caesar, Burnice, Jane atau Policeboo
dan jangan lupa buat install parallel dulu
`apt update`
`apt install parallel -y`
![alt text](images/image-62.png)
untuk ip disini
`parallel curl -s IP_HOLLOWZER ::: IPCAESAR IPBURNICE IPJANE IPPOLICEBOO`
terlihat kalo hanya 2 koneksi yang bisa akses curl

## NO 8 Burnice
1. masuk web console Burnice trus run setup.sh
![alt text](images/image-65.png)
cek juga ip dari burnice disini ipnya 10.72.2.67
liat di bagian inet
![alt text](images/image-67.png)
2. di hollowzero coba listen nc port 12345
`nc -l -p 12345`
![alt text](images/image-66.png)
3. di fairy kita netcat ke Burnice
![alt text](images/image-68.png)
4. nanti hollowzero yang akan mendapat messagenya bukan burnice
![alt text](images/image-69.png)

## MISI 3
1. sebelum meng isolasi Burnice kita disuruh kirim message ke Burnice
2. apt update
3. apt install netcat -y
4. nc -l -p 7777 
![alt text](images/image-73.png)
5. `iptables -F` buat clear rule iptables
5. kirim pesan ke burnice dari fairy
![alt text](images/image-72.png)
5. output di burnice
 ![alt text](images/image-71.png)

7. run iptables terakhir
![alt text](images/image-74.png)
![alt text](images/image-75.png)

8. test ping
![alt text](images/image-76.png)
gabisa di ping
selesai 
