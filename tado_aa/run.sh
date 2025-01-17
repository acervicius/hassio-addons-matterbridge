#!/usr/bin/with-contenv bashio
username=$(bashio::config 'username')
password=$(bashio::config 'password')
minTemp=$(bashio::config 'minTemp')
maxTemp=$(bashio::config 'maxTemp')

sed -i "s/your_tado_username/${username}/" tado_aa.py
sed -i "s/your_tado_password/${password}/" tado_aa.py
sed -i "s/5/${minTemp}/" tado_aa.py
sed -i "s/25/${maxTemp}/" tado_aa.py

echo "Starting Tado Auto Assist python script from adrianslabu/tado_aa"
python3 tado_aa.py
