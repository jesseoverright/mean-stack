#! /usr/bin/env bash

# sudo yum update

# install node.js using extra pacakages for enterprise linux repo
sudo yum install -y epel-release
sudo yum install -y nodejs npm

# open up port 8080 to outside viewers
sudo iptables -I INPUT -p tcp -m tcp --dport 8080 -j ACCEPT
sudo service iptables save

# start up node.js
node /vagrant/index.js &