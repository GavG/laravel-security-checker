#!/bin/sh

docker run --rm \
    -u "$(id -u):$(id -g)" \
    -v $(pwd):/var/www/html \
    -v $(pwd)/vendor:/var/www/html/vendor \
    -w /var/www/html \
    thecodingmachine/php:8.2-v4-cli \
    ./vendor/bin/phpunit tests