#!/bin/bash
echo "-----------------------------------------------------------------------------"
echo "Відкриваємо 80 порт для проксі від вашого серверу"
echo "-----------------------------------------------------------------------------"
apt update
sudo apt update
sudo apt install wget -y
git clone https://github.com/elejke/docker-socks5.git
cd docker-socks5
sed -i -e 's/admin2/admin/g' Dockerfile
sed -i -e 's/MyPassword/159357/g' Dockerfile
echo "-----------------------------------------------------------------------------"
echo "Тепер просто в проксі вписуєте свій IP (SOCKS5) і порт 80"
echo "SMART TRADE"
echo "-----------------------------------------------------------------------------"
