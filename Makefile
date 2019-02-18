SHELL := /bin/bash # Use bash syntax

include .env
export

mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
current_dir_name := $(notdir $(patsubst %/,%,$(dir $(mkfile_path))))

run:
	docker-compose run --service-ports --name php7-nginx --rm app

down:
	docker-compose down

mysql:
	docker exec -it php7-nginx-mysql mysql -h localhost -u root -p$(MYSQL_ROOT_PASSWORD)

console:
	docker exec -it php7-nginx bash

destroy:
	docker-compose down
	docker volume rm ${current_dir_name}_mysql-data
	docker rmi mysql:5.7
	docker rmi ${current_dir_name}_app
