#!/bin/bash
#init=$(cd -P -- "$(dirname -- "$0")" && pwd -P)

echo Digete su correo electronico de midas

read email

ssh-keygen -t rsa -C @email

git clone https://github.com/laravel/homestead.git Homestead

cd $1

git clone https://github.com/midascashier/cashier_client.git new_client
git clone https://github.com/midascashier/php-rabbitmq-test-app.git cashier_client_new_workers

cp -f config/* new_client/config/
rm -rf config

cp -f config.php cashier_client_new_workers
rm -f config.php

sh $2/DevOps/new_cashier/Homestead/init.sh

cd $2/DevOps/new_cashier/

rm Homestead/Vagrantfile
rm Homestead/Homestead.yaml
cp Homestead.yaml Homestead
cp Vagrantfile Homestead
rm Vagrantfile
rm Homestead.yaml