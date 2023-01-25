#!/usr/bin/env bash

sudo apt install software-properties-common -y
sudo add-apt-repository ppa:ondrej/php -y
sudo apt update -y

sudo apt install php8.2-cli php8.2-mbstring php8.2-dev -y
