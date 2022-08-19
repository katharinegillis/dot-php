#!/usr/bin/env bash

# Remove latest php related images
docker image rm php:cli-alpine
docker image rm composer
