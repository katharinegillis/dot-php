#!/usr/bin/env bash

# Remove latest and 7.4 php related images
docker image rm php:cli-alpine
docker image rm php:7.4-cli-alpine
docker image rm composer