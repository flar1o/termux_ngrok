#!/bin/dash
atualizar='\033[1;32m'
echo "$atualizar Обновления репозиториев..."
apt update && upgrade -y
apt install -y wget
clear
k='\033[01;32m'
echo
echo
echo "Вы хотите установить Ngrok? [Y/n]"
read opcao
case $opcao in
y)
echo
echo " Скачивание Fast-ngrok ..."
wget "https://github.com/flar1o/for_termux_ngrok/blob/main/ngrok-2.3.9-linux-arm64.zip?raw=true" -O ngrok.zip
unzip ngrok.zip
cat ngrok > /data/data/com.termux/files/usr/bin/ngrok
chmod 700 /data/data/com.termux/files/usr/bin/ngrok
rm ngrok ngrok.zip
clear
echo "${k}███╗   ██╗ ██████╗ ██████╗  ██████╗ ██╗  ██╗";
echo "${k}████╗  ██║██╔════╝ ██╔══██╗██╔═══██╗██║ ██╔╝";
echo "${k}██╔██╗ ██║██║  ███╗██████╔╝██║   ██║█████╔╝ ";
echo "${k}██║╚██╗██║██║   ██║██╔══██╗██║   ██║██╔═██╗ ";
echo "${k}██║ ╚████║╚██████╔╝██║  ██║╚██████╔╝██║  ██╗";
echo "${k}╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝";
echo "${r}                             by flar1o 2024";
echo "Пример команды | ngrok http 8080)"
;;

n)
clear
echo "Ngrok не установлен :("
echo
esac



