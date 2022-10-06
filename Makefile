# VARIABLES
APP      =    vuejs-app
PATH     =    ${PWD}/../

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
	@echo "                    USAGES:"
	@echo "                        make init            => Project name: vuejs-app"
	@echo "                        make init APP=my_app => Project name: my_app"
	@echo ""
	@echo "    prepare    :    Equivalent to make build, then make init"
	@echo "                    USAGES:"
	@echo "                        make prepare            => Project name: vuejs-app"
	@echo "                        make prepare APP=my_app => Project name: my_app"
	@echo ""

## PROJECT
build:
	/usr/bin/docker image build --no-cache --file ./build-docker/Dockerfile --tag node:vuejs ./build-docker/

init:
	/usr/bin/docker run --rm --interactive --tty --user 1000:1000 --volume "$(PATH):/app/" node:vuejs vue create $(APP)
	cp ./build/Makefile $(PATH)/$(APP)/

prepare: build init
