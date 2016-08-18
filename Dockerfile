FROM node:5.12.0

MAINTAINER Greben, greben1@gmail.com

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install


# Bundle app source
COPY . /usr/src/app

# currently only works for development
ENV NODE_ENV development

# Port 3000 for server
EXPOSE 3000 
CMD [ "npm", "start" ]
