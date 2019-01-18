#!/bin/bash

###############################################################
# tools ip otomatis
# #############################################################
# code by 	: Damvee
# date		: 18 January 2019
# os		: Linux (Debian)
# source code ini di persembahkan untuk rakyat, anda dapat
# memodifikasi, dan memperbanyak secara gratis
# knowledge is free :) | save this Nature with love
###############################################################
echo " ███▄ ▄███▓ ▄▄▄     ▄▄▄█████▓ ▄▄▄       "
echo "▓██▒▀█▀ ██▒▒████▄   ▓  ██▒ ▓▒▒████▄     "
echo "▓██    ▓██░▒██  ▀█▄ ▒ ▓██░ ▒░▒██  ▀█▄   "
echo "▒██    ▒██ ░██▄▄▄▄██░ ▓██▓ ░ ░██▄▄▄▄██  "
echo "▒██▒   ░██▒ ▓█   ▓██▒ ▒██▒ ░  ▓█   ▓██▒ "
echo "░ ▒░   ░  ░ ▒▒   ▓▒█░ ▒ ░░    ▒▒   ▓▒█░ "
echo "░  ░      ░  ▒   ▒▒ ░   ░      ▒   ▒▒ ░ "
echo "░      ░     ░   ▒    ░        ░   ▒    "
echo "       ░         ░  ░              ░  ░ "
echo "                                        "
echo " ██ ▄█▀ ▒█████  ▓█████▄  ▒█████   ██ ▄█▀"
echo " ██▄█▒ ▒██▒  ██▒▒██▀ ██▌▒██▒  ██▒ ██▄█▒ "
echo "▓███▄░ ▒██░  ██▒░██   █▌▒██░  ██▒▓███▄░ "
echo "▓██ █▄ ▒██   ██░░▓█▄   ▌▒██   ██░▓██ █▄ "
echo "▒██▒ █▄░ ████▓▒░░▒████▓ ░ ████▓▒░▒██▒ █▄"
echo "▒ ▒▒ ▓▒░ ▒░▒░▒░  ▒▒▓  ▒ ░ ▒░▒░▒░ ▒ ▒▒ ▓▒"
echo "░ ░▒ ▒░  ░ ▒ ▒░  ░ ▒  ▒   ░ ▒ ▒░ ░ ░▒ ▒░"
echo "░ ░░ ░ ░ ░ ░ ▒   ░ ░  ░ ░ ░ ░ ▒  ░ ░░ ░ "
echo "░  ░       ░ ░     ░        ░ ░  ░  ░   "
echo "                 ░                      "

echo "-----------------WELCOME-----------------";
echo "1. cek ip";
echo "2. cek route";
echo "3. ping";
echo "4. ip otomatis";
echo "5. kembali";
echo "6. keluar";
echo "masukkan pilihan anda : ";
read pilih
if [ $pilih == 1 ]; then
	echo "ip anda saat ini adalah : "
	ifconfig
	echo " coba lagi? y/n "
	read coba
	if [ $coba == y ]; then
		./mata_kodok.sh
	else exit
	fi
	./ipme.sh
elif [ $pilih == 2 ]; then
	echo "route anda saat ini : '; "
	route -n
	echo "coba lagi ? : y/n  "
	read coba
	if [ $coba == y ]; then
		clear
		./mata_kodok.sh
	else exit
	fi
elif [ $pilih == 3 ]; then
	echo "menampilkan gerbang jaringan : "
	route -n
	echo "1. ping selalu berjalan"
	echo "2. ping sesuai waktu "
	echo " silahkan pilih 1/2 : "
	read ping
	if [ $ping == 1 ]; then
		echo "tekan (CTRL+C) untuk mengakhiri sesi ping"
		echo "mulai sekarang ? y/n"
		read mulai
		if [ $mulai == y ]; then
			ping ip route
		else exit
		fi
	elif [ $ping == 2 ]; then
		echo "silahkan pilih sesuai menu"
		echo " 1.>>>>>> ping 5X"
		echo " 2.>>>>>> ping 10X"
		read pilihan_ping
		if [ $pilihan_ping == 1 ]; then
			ping -c 5 ip route
		elif [ $pilihan_ping == 2 ]; then
			ping -c 10 ip route
		else exit
		fi
	else exit
	fi
elif [ $pilih == 4 ]; then
	echo "ip anda akan di setting secara otomatis"
	ifconfig wlan0 down
	ifconfig wlan0 192.168.1.111
	ifconfig wlan0 netmask 255.255.255.0
	ifconfig wlan0 broadcast 192.168.1.255
	route add default gw 192.168.1.1 wlan0
	ifconfig wlan0 up
	ifconfig wlan0
	exit
elif [ $pilih == 5 ]; then
	echo "masukkan pilihan anda lagi : ";
elif [ $pilih == 6 ]; then
	exit
else
	echo " anda memasukkan pilihan yang salah"
	echo " pilih angka sesuai menu di atas"
	echo "1 / 2 / 3 / 4 / 5"
	exit
fi
