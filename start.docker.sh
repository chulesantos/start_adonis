#!/bin/bash

docker run -d --name postgres --network rede-local -e POSTGRES_PASSWORD=92529887 postgres

docker run -it -d --name adonis -v $(pwd):/var/www --network rede-local -w /var/www -p 3333:3333 chulesantos/adonis-node:15.5.1
