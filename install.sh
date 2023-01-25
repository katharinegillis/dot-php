#!/usr/bin/env bash

sudo apt install software-properties-common -y
sudo add-apt-repository ppa:ondrej/php -y
sudo apt update -y

sudo apt install php8.2-cli php8.2-mbstring php8.2-dev php8.2-xdebug php8.2-curl -y

EXPECTED_CHECKSUM="$(php -r 'copy("https://composer.github.io/installer.sig", "php://stdout");')"
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
ACTUAL_CHECKSUM="$(php -r "echo hash_file('sha384', 'composer-setup.php');")"

if [ "$EXPECTED_CHECKSUM" != "$ACTUAL_CHECKSUM" ]
then
    echo 'ERROR: Invalid installer checksum'
    rm composer-setup.php
    exit
fi

php composer-setup.php --quiet
rm composer-setup.php

sudo mv composer.phar /usr/local/bin/composer
