#!/usr/bin/env bash

# Prepare Symfony Project
chown -R www-data:www-data app/cache
chown -R www-data:www-data app/logs
rm -rf app/log/* app/cache/*
php app/console doctrine:database:create
php app/console doctrine:schema:update --force
php app/console cache:clear --env=prod
chmod 777 -R app/cache app/logs

source /etc/apache2/envvars
exec apache2 -D FOREGROUND