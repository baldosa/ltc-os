#/bin/bash
nmcli con add con-name hotspot ifname wlan0 type wifi ssid "LTC-Wifi"
nmcli con modify hotspot wifi-sec.key-mgmt wpa-psk
nmcli con modify hotspot wifi-sec.psk "eletece"
nmcli con modify hotspot 802-11-wireless.mode ap 802-11-wireless.band bg ipv4.method shared
