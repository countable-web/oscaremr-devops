#!/bin/bash

docker-compose stop tomcat_oscar
docker-compose rm tomcat_oscar

docker-compose stop nginx
docker-compose rm nginx

docker-compose stop flask_oscar
docker-compose rm flask_oscar

docker-compose up -d db
sleep 5
docker-compose up -d tomcat_oscar
docker-compose up -d flask_oscar

sleep 5
docker-compose up -d nginx
