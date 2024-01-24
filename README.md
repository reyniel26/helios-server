# Helios Election System

Helios is an end-to-end verifiable voting system.

[![Travis Build Status](https://travis-ci.org/benadida/helios-server.svg?branch=master)](https://travis-ci.org/benadida/helios-server)

[![Stories in Ready](https://badge.waffle.io/benadida/helios-server.png?label=ready&title=Ready)](https://waffle.io/benadida/helios-server)


## Run Helios via Docker

1. Check if the RabbitMQ is running. If not, Run the RabbitMQ docker
    `docker run -d --hostname my-rabbit --name some-rabbit -p 5672:5672 -p 8080:15672 rabbitmq:3-management`

2. Set up .env file
    - Take note that if the rabbitmq and postgres are outside of docker instance, instead of localhost it should be the ipaddress of the device or where is the rabbitmq and postgres installed

3. `docker compose up -d`