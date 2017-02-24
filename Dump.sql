LOAD XML LOCAL INFILE "/usr/src/Dump.netxml" INTO TABLE ssid ROWS IDENTIFIED BY '<SSID>';
LOAD XML LOCAL INFILE "/usr/src/Dump.netxml" INTO TABLE wirelessclient ROWS IDENTIFIED BY '<wireless-client>';
LOAD XML LOCAL INFILE "/usr/src/Dump.netxml" INTO TABLE wirelessnetwork ROWS IDENTIFIED BY '<wireless-network>';
exit
