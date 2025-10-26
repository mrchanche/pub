#!/bin/bash

ssh-keygen -t ed25519 -C "68042455+mrchanche@users.noreply.github.com"

echo '-----BEGIN OPENSSH PRIVATE KEY-----' > ~/.ssh/id_ed25519
echo '' >> ~/.ssh/id_ed25519
echo '' >> ~/.ssh/id_ed25519
echo '' >> ~/.ssh/id_ed25519
echo '' >> ~/.ssh/id_ed25519
echo '' >> ~/.ssh/id_ed25519
echo '-----END OPENSSH PRIVATE KEY-----' >> ~/.ssh/id_ed25519
echo '' > ~/.ssh/id_ed25519.pub

mkdir ~/Github
cd ~/Github
git clone git@github.com:mrchanche/pub.git

git config --global user.name "mrchanche"
git config --global user.email "68042455+mrchanche@users.noreply.github.com"
