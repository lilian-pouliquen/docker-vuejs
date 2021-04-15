# Pulling node image
FROM node:lts-alpine

# Installing bash
RUN apk add bash

# Creating app directory
WORKDIR /app

# Installing Vue.js
# If yarn is used
RUN yarn global add @vue/cli
# npm instead
# RUN npm install --global @vue/cli

# Exposing 8080 port
EXPOSE 8080

# Starting server
# If yarn is used
CMD ["yarn", "serve"]
# npm instead
# CMD ["npm", "run", "serve"]
