#!/usr/bin/env bash

# Uninstall php using apt
sudo apt remove php8.0 php8.0-curl php8.0-xml -y

# Uninstall composer
sudo rm /usr/local/bin/composer
