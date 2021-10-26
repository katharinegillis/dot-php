#!/usr/bin/env bash

SYSTEM=$3

if [ "$SYSTEM" != "mac" ]; then
    # Uninstall global composer packages
    composer global remove escapestudios/symfony2-coding-standard squizlabs/php_codesniffer

    # Uninstall php using apt
    sudo apt remove php8.0 php8.0-curl php8.0-xml -y

    # Uninstall composer
    sudo rm /usr/local/bin/composer
fi