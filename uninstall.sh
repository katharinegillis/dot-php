#!/usr/bin/env bash

sudo apt remove php8.4-cli php8.4-mbstring php8.4-dev php8.4-xdebug php8.4-curl -y
sudo rm -rf /usr/local/bin/composer
sudo apt-get -y autoremove
