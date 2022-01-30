#!/bin/sh
docker exec -i -t ec_app_laravel.test_1 bash -c "
php artisan cache:clear
php artisan config:clear
php artisan config:cache
php artisan route:clear
php artisan view:clear
php artisan clear-compiled
php artisan optimize
composer dump-autoload"

