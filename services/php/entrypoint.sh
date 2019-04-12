#!/usr/bin/env sh

DIR="/var/www/symfony"
cd $DIR

composer create-project symfony/symfony-demo .

sed -i "s|'pdo_sqlite'|'pdo_mysql'|" config/packages/doctrine.yaml
sed -i "s|server_version: '.*'|server_version: '8.0'|" config/packages/doctrine.yaml
sed -i "s|DATABASE_URL=.*|DATABASE_URL=$DATABASE_URL|" .env
php bin/console doctrine:database:create > /dev/null
php bin/console doctrine:schema:create
echo 'yes' | php bin/console doctrine:fixtures:load
