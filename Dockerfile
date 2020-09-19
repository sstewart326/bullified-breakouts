# base image
FROM node:10.9 as bullified-breakouts-webapp

# Create a directory where our app will be placed
RUN mkdir -p /usr/src/bullified-breakouts/webapp

# set working directory
WORKDIR /usr/src/bullified-breakouts/webapp

#copy package and package lock into image
COPY package*.json /usr/src/bullified-breakouts/webapp/

#install dependencies
RUN npm install

#copy project into image
COPY . /usr/src/bullified-breakouts/webapp

# Serve the app
CMD ["npm", "start"]

