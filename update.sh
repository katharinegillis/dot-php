#!/usr/bin/env bash

# Update php using apt
sudo apt install php8.0 php8.0-curl -y

# Update composer using its self-update
composer self-update