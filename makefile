compose_cmd = docker-compose -f ./operations/local/docker-compose.yml
container_name = retex_fe
container_exec_instruction = docker exec -it $(container_name)
network_name = retex_network

# containers lifecycle
bash:
	$(container_exec_instruction) sh

create_network:
	docker network ls | grep $(network_name) || docker network create $(network_name)

run_dev:
	$(container_exec_instruction) npm run dev

start_bash:
	make create_network
	$(compose_cmd) up -d
	make bash

up: 
	make create_network
	$(compose_cmd) up -d
	make bash
	
up_rebuilding:
	make create_network
	$(compose_cmd) up -d --build
	make run_dev

stop:
	$(compose_cmd) stop

down:
	$(compose_cmd) down