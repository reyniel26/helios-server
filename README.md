# Helios Election System

Helios is an end-to-end verifiable voting system.

[![Travis Build Status](https://travis-ci.org/benadida/helios-server.svg?branch=master)](https://travis-ci.org/benadida/helios-server)

[![Stories in Ready](https://badge.waffle.io/benadida/helios-server.png?label=ready&title=Ready)](https://waffle.io/benadida/helios-server)


## Run Helios via Docker

1. Check if the RabbitMQ is running. If not, Run the RabbitMQ docker
    `docker run -d --hostname my-rabbit --name some-rabbit -p 5672:5672 -p 8080:15672 rabbitmq:3-management`

2. Set up .env file
    - Please note that if RabbitMQ and PostgreSQL are outside of the Docker instance, the connection should be established using the IP address of the device or the location where RabbitMQ and PostgreSQL are installed, instead of using 'localhost'.

3. `docker compose up -d`