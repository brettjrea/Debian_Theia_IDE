#!/bin/bash

# Install libsecret-1-dev
sudo apt-get install libsecret-1-dev

# Create .theia directory and download settings.json
mkdir ~/.theia
cd ~/.theia
wget https://raw.githubusercontent.com/brettjrea/Debian_Theia_IDE/master/settings.json

# Create ~/theia directory and set PUPPETEER_SKIP_DOWNLOAD=true
mkdir ~/theia
cd ~/theia/
export PUPPETEER_SKIP_DOWNLOAD=true

# Download package.json and install dependencies
wget https://raw.githubusercontent.com/brettjrea/Debian_Theia_IDE/master/package.json
yarn

# Start Theia with plugins from local directory
yarn theia start --plugins=local-dir:/home/userland/plugins --skip-build --ignore-errors


# Build Theia and start the IDE
yarn theia build
yarn start /my-workspace --hostname 0.0.0.0 --port 8080
