#!/bin/bash
echo "-----------------------------------------------------------------------------"
echo "Відкриваємо 80 порт для проксі від вашого серверу"
echo "-----------------------------------------------------------------------------"
apt update
sudo apt update
sudo apt install wget -y
wget -O get-docker.sh https://get.docker.com
sudo sh get-docker.sh
sudo apt install -y docker-compose
rm -f get-docker.sh
sudo usermod -aG docker $USER
git clone https://github.com/elejke/docker-socks5.git
cd docker-socks5
sed -i -e 's/john/admin/g' Dockerfile
sed -i -e 's/MyPassword/159357/g' Dockerfile
sudo docker build -t socks5 .
sudo sudo docker run -d -p 80:1080 -v ${PWD}/sockd.conf:/etc/sockd.conf socks5
echo "-----------------------------------------------------------------------------"
echo "Тепер просто в проксі вписуєте свій IP (SOCKS5) і порт 80"
echo "SMART TRADE" s
echo "-----------------------------------------------------------------------------"
