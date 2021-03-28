#!/usr/bin/env bash
sudo apt update -y
sudo apt upgrade -y
mkdir go
cd go
wget https://golang.org/dl/go1.16.2.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.16.2.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
cd ..
git clone ropnop/kerbrute
cd kerbrute
make linux
