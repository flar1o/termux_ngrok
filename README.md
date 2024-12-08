# termux_ngrog
# Установка ngrok на Termux
Перевел на русский и обновил репозитории

![alt tag](https://github.com/Bafomet666/ngrok.dops/blob/main/photo_2020-10-19_13-17-13.jpg)​

apt update && apt upgrade
 
apt install git

git clone https://github.com/flar1o/termux_ngrok/

cd  termux_ngrok
 
chmod +x Fast-ngrok.sh
 
./Fast-ngrok.sh

ngrok http 8080
