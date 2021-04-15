# VARIABLES
APP = vuejs-app

# RULES
## DEFAULT RULE
all: prepare

## HELP
help:
	@echo ""
	@echo "[ HELP ]"
	@echo "    help       :    Prints the make rules available"
	@echo ""
	@echo "[ PROJECT ]"
	@echo "    build      :    Builds the Docker image for Vue.js"
	@echo ""
	@echo "    init       :    Creates your Vue.js app, letting you choose your settings, then copies the build/Makefile inside your new app"
	@echo ""
	@echo "    prepare    :    Equivalent to make build, then make init"
	@echo ""

## PROJECT
build: ./build/Dockerfile
	docker image build --no-cache --file ./build/Dockerfile --tag node:vuejs ./build

init:
	docker run --rm --interactive --tty --user 1000:1000 --volume "${PWD}/:/app/" node:vuejs vue create $(APP)
	cp ./build/Makefile ./$(APP)

prepare: build init
