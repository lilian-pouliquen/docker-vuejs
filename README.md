# docker-vuejs

## Introduction

docker-vuejs is the project you want to create Vue.js apps using Docker.  
**Notice:** This project can be used to build the Docker image for Vue.js required in other projects.

## Requirements

- [Docker](https://docs.docker.com/get-docker/)
- Make (optional)

**Notice:** If you do not have make insalled, you can find the commands to use inside of the Makefile

## Usage

Use the Makefile to build the node:vuejs docker image, then to create your Vue.js app.  
A second Makefile (the one at `build/Makefile`) will be copied to your new project, allowing you to start a development environment with Docker to use your Vue.js app.

## Make rules available

```text
make build      :    Builds the Docker image for Vue.js

make init       :    Creates your Vue.js app, letting you choose your settings, then copies the build/Makefile inside your new app

make prepare    :    Equivalent to make build, then make init
```

## Docker image

The docker image uses `build/Dockerfile`.  
Base image: `node:lts-alpine`  
You can choose to use `yarn` or `npm` by commenting/uncommenting the related lines.

## Author

- Lilian POULIQUEN: [Github - @lilian-pouliquen](https://github.com/lilian-pouliquen/)
