#!/bin/bash
apt-get update
wget https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_extended_0.84.0_Linux-64bit.tar.gz
tar -C /usr/local -xzf hugo_extended_0.84.0_Linux-64bit.tar.gz
mv hugo /usr/local/bin/
apt-get install -y hugo make
make build
