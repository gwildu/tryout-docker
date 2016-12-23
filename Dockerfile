# the docker image we want to build from
FROM node:argon
# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install
# Bundle app source
COPY . /usr/src/app
# The port that will be exposed
EXPOSE 8888
# Command to start the application
CMD [ "npm", "start" ]
