#!/usr/bin/env bash

SYSTEM=$3

if [ "$SYSTEM" != "mac" ]; then
    # Update php using apt
    sudo apt install php8.0 php8.0-curl php8.0-xml -y

    # Update composer using its self-update
    sudo composer self-update
fi