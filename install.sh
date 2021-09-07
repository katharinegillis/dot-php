#!/usr/bin/env bash

SYSTEM=$3

if [ "$SYSTEM" != "mac" ]; then
    # Set up repositories
    sudo apt install software-properties-common
    sudo add-apt-repository ppa:ondrej/php -y

    # Install php
    sudo apt install php8.0 php8.0-curl -y

    # Install composer
    curl -sS https://getcomposer.org/installer -o composer-setup.php
    HASH=$(curl -sS https://composer.github.io/installer.sig)
    HASH_RESULT=$(php -r "if (hash_file('SHA384', 'composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;")
    if [ "$HASH_RESULT" != "Installer verified" ];
    then
        echo "$HASH_RESULT"
        echo "Composer installer could not be verified! Composer will not be installed.";
    else
        sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
    fi

    rm -rf composer-setup.php
fi