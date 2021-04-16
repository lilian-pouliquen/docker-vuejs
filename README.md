# docker-vuejs <!-- omit in toc -->

## Table of content <!-- omit in toc -->

- [1. Introduction](#1-introduction)
- [2. Requirements](#2-requirements)
- [3. Usage](#3-usage)
- [4. Make rules available](#4-make-rules-available)
- [5. Docker image](#5-docker-image)
- [6. Author](#6-author)

## 1. Introduction

docker-vuejs is the project you want to create Vue.js apps using Docker.  
**Notice:** This project can be used to build the Docker image for Vue.js required in other projects.

## 2. Requirements

- [Docker](https://docs.docker.com/get-docker/)
- Make (optional)

**Notice:** If you do not have make insalled, you can find the commands to use inside of the Makefile

## 3. Usage

Use the Makefile to build the node:vuejs docker image, then to create your Vue.js app.  
A second Makefile (the `build/Makefile` one) will be copied to your new project, allowing you to start a development environment with Docker to use your Vue.js app.

## 4. Make rules available

```text
make build      :    Builds the Docker image for Vue.js

make init       :    Creates your Vue.js app, letting you choose your settings, then copies the build/Makefile inside your new app

make prepare    :    Equivalent to make build, then make init
```

**Notice:** To avoid Git repos conflicts between docker-vuejs and your projects, the Vue.js project will be created in the parent directory of docker-vuejs.  
To change this default setting during the Vue.js project creation, you can use the following commands:  

```text
make init PATH=path/to/new/project/directory

or

make prepare PATH=path/to/new/project/directory
```  

***WARNING:*** PATH must be an absolute path!

## 5. Docker image

The docker image uses `build/Dockerfile`.  
Base image: `node:lts-alpine`  
You can choose to use `yarn` or `npm` by commenting/uncommenting the related lines.

## 6. Author

- Lilian POULIQUEN: [Github - @lilian-pouliquen](https://github.com/lilian-pouliquen/)
