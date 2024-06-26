#!/bin/bash
REPO=https://github.com/kenu/10ynews

sudo yum install -y git
curl -sL https://rpm.nodesource.com/setup_20.x | sudo bash -
sleep 2
sudo yum install -y nodejs
sudo npm i -g npm
sudo npm i -g pm2
mkdir ~/git
cd ~/git
git clone $REPO
cp ~/git/10ynews/sh/deploy-10y.sh ~
chmod +x ~/deploy-10y.sh

cd 10ynews/web
npm install --only=production
pm2 start bin/10ynews
sleep 2
pm2 list

sudo dnf install -y nginx
sudo systemctl enable nginx

sudo mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.orig
sudo sh -c "sed '38,87d' /etc/nginx/nginx.conf.orig > /etc/nginx/nginx.conf"
cd /etc/nginx/conf.d
sudo curl -O https://raw.githubusercontent.com/kenu/10ynews/main/sh/10ynews.conf
sleep 2
sudo systemctl start nginx

