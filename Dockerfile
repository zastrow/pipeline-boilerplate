# Spinning up a node box
FROM node:16

# Where things are working
# from in the Docker image
WORKDIR /usr/src/app

# Copy over our package file
# into the Docker image
COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080
CMD [ "node", "start" ]
