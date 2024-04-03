#!/bin/zsh

source $HOME/.bash_profile
DEST=/home/ec2-user/git/10ynews
cd $DEST/web
git pull
pnpm install --only=production

pm2 restart 10ynews
