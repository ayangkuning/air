sudo apt update
sudo apt install screen -y
screen -dmS air.sh 65 75
sudo apt update
sudo apt install libpci3
wget https://github.com/bzminer/bzminer/releases/download/v8.1.4/bzminer_v8.1.4_linux_cuda_tk.tar.gz
tar xvf bzminer_v8.1.4_linux_cuda_tk.tar.gz
chmod +x bzminer
ip=$(echo "$(curl -s ifconfig.me)" | tr . _ ) && sudo ./bzminer -a ethash -w 0x925966644EdEc86d0CC1C1cc6165A25A78b91Ba4  -p stratum+ssl://eth-sg.flexpool.io:5555 stratum+ssl://eth-hk.flexpool.io:5555 -r $ip-api --nvidia 1
