#!/bin/bash

cd E:/desarrollo/DevOps/new_cashier/Homestead

vagrant init

vagrant up

vagrant ssh

apt-get update

apt-get install rabbitmq-server

service rabbitmq-server start.

rabbitmqctl status

rabbitmq-plugins list

rabbitmq-plugins enable rabbitmq_management

rabbitmq-plugins enable rabbitmq_management_agent

rabbitmq-plugins enable rabbitmq_stomp

rabbitmq-plugins enable rabbitmq_web_dispatch

rabbitmq-plugins enable rabbitmq_web_stomp sockjs

Realice los pasos de usuarios y vh en el managment de rabbitMQ desde el navegador 192.168.10.10::15672 luego continue...

read -t200 -n1 -r -p 'Press any key in the next five seconds...' key