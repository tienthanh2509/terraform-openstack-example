#!/bin/bash
sudo sed -i 's/http:\/\/archive.ubuntu.com/http:\/\/opensource.xtdv.net/g' /etc/apt/sources.list
sudo bash -c "echo 'Acquire::http { Proxy \"http://10.10.10.10:8080\"; };' > /etc/apt/apt.conf.d/01proxy"
sudo bash -c "echo 'Acquire::https { Proxy \"http://10.10.10.10:8080\"; };' >> /etc/apt/apt.conf.d/01proxy"

sudo apt-get -y update
sudo apt-get -y install nginx
sudo service nginx start