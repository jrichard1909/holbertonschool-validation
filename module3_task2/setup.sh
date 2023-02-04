#!/bin/bash

# Update package manager
apt-get update

# Install 'make' and 'wget'
apt-get install -y make wget

# Download and extract appropriate version of GoHugo for Ubuntu 18.04
wget https://github.com/gohugoio/hugo/releases/download/v0.109.0/hugo_extended_0.109.0_Linux-64bit.tar.gz
tar -xvf hugo_extended_0.109.0_Linux-64bit.tar.gz hugo

# Move the executable to a directory in the PATH
mv hugo /usr/local/bin/

# Remove unnecessary files
rm hugo_extended_0.109.0_Linux-64bit.tar.gz

# Install markdownlint and zip tools
apt-get install zip -y
npm install -g markdownlint-cli -y

# Build the website
make build
