# VARIABLES
PM = yarn

# RULES
## DEFAULT RULE
all: help

## HELP
help:
	@echo ""
	@echo "[ HELP ]"
	@echo "    help       :    Prints the make rules available"
	@echo ""
	@echo "[ START/STOP CONTAINER ]"
	@echo "    start      :    Starts vuejs-app container with Docker"
	@echo ""
	@echo "    stop       :    Stops vuejs-app container with Docker"
	@echo ""
	@echo "    restart    :    Restarts vuejs-app container with Docker"
	@echo ""
	@echo "[ COONTAINER MANAGEMENT ]"
	@echo "    logs       :    Follows the logs from vuejs-app container "
	@echo ""
	@echo "    bash       :    Opens an interactive bash command line inside the vuejs-app container"
	@echo ""
	@echo "[ PROJECT MANAGEMENT ]"
	@echo "    install    :    Installs dependencies with the given package manager (default: yarn)"
	@echo "                    USAGES:"
	@echo "                        make install            => Package manager: yarn"
	@echo "                        make install PM=yarn    => Package manager: yarn"
	@echo "                        make install PM=npm     => Package manager: npm"
	@echo ""

## START/STOP CONTAINER
start:
	docker run --rm --detach --name vuejs-app --volume "${PWD}/:/app/" --publish "8080:8080" node:vuejs

stop:
	docker stop vuejs-app

restart: stop start

## CONTAINER MANAGEMENT
logs:
	docker logs -f vuejs-app

bash:
	docker exec --interactive --tty vuejs-app bash

## PROJECT MANAGEMENT
install:
	docker run --rm --user 1000:1000 --volume "${PWD}/:/app/" node:vuejs $(PM) install
