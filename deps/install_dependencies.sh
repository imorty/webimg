#!/bin/bash

apt-get update
apt-get -y upgrade

# Install required packages
apt-get -y install \
    pandoc \
    curl \
    m4

# Install nodejs and its packages
curl -fsSL https://deb.nodesource.com/setup_current.x > nodeinst
bash ./nodeinst
rm ./nodeinst
apt-get install -y nodejs
npm init --yes
npm install -g html-minifier
npm install -g stylelint
npm install -g stylelint-config-standard
npm install -g postcss postcss-cli
npm install -g cssnano

# Clean the retrieved package files
apt-get autoremove
apt-get clean
sync
