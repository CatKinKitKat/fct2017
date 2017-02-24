#!bin/bash

kill -9 $(pidof avahi-daemon)
kill -9 $(pidof wpa_supplicant)
kill -9 $(pidof dhcpd)
kill -9 $(pidof dhcpcd)

/etc/init.d/mysql start

airmon-ng start wlan0
airodump-ng wlan0mon --output-format netxml -w /usr/src/Readable &
sleep 60s
kill -9 $(pidof airodump-ng)
while :; do
  mv Readable-01.kismet.netxml Dump.netxml
  airodump-ng wlan0mon --output-format netxml -w /usr/src/Readable &
  sh insert
  sleep 60s
  kill -9 $(pidof airodump-ng)
done
