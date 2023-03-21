#!/bin/sh

docker run --rm \
    -u "$(id -u):$(id -g)" \
    -v $(pwd):/var/www/html \
    -w /var/www/html \
    thecodingmachine/php:8.2-v4-cli \
    composer update --ignore-platform-reqs --no-cache