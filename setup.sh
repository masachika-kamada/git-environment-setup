#!/bin/bash

git config --global user.name "masachika-kamada"
git config --global user.email "63488322+masachika-kamada@users.noreply.github.com"

git config --global core.quotepath false
git config --global init.defaultBranch main

mkdir ~/.ssh
cd ~/.ssh

KEY_FILE=~/.ssh/id_rsa

if [ -f $KEY_FILE ]; then
    echo "SSH キーはすでに存在します。"
else
    ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa
fi

cat id_rsa.pub
