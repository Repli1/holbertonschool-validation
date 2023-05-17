#!/bin/bash
apt-get update
curl -L -o https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_extended_0.84.0_Linux-64bit.tar.gz
tar -xzf hugo.tar.gz hugo
sudo mv hugo /usr/local/bin/
apt-get install -y make
make build
