#!/bin/zsh

docker run --rm --name mysql -e MYSQL_ROOT_PASSWORD=root -p 3306:3306 -v $(pwd)/mysql:/var/lib/mysql mysql
