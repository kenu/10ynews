#!/bin/sh
HOME=/home/dev
source $HOME/.zshrc

git pull;

SRC=.
DEST=$HOME/local/10ynews

cp -rf $SRC/* $DEST

cd $DEST/web
npm install

pm2 restart 10ynews

# curl -X POST -H 'Content-type: application/json' \
# --data '{"text":"10ynews Deployment Finished!"}' \
# https://hooks.slack.com/services/xxxxR3xx4/B0xxDNExx11/xxxWeAVFWcFJOoJBxxxx6Bxx

# end
