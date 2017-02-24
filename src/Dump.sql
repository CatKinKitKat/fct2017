LOAD xml local infile "/usr/src/Dump.netxml" INTO TABLE ssid rows identified BY '<SSID>';
LOAD xml local infile "/usr/src/Dump.netxml" INTO TABLE wirelessclient rows identified BY '<wireless-client>';
LOAD xml local infile "/usr/src/Dump.netxml" INTO TABLE wirelessnetwork rows identified BY '<wireless-network>';
EXIT
