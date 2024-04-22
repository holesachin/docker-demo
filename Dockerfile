# pull official base image
FROM node:18-alpine

# set working directory
WORKDIR /app

# Copies dist dir over to Docker environment
COPY ./dist .

# Install `serve` to run the application.
RUN npm install -g serve

# Uses port which is used by the actual application
EXPOSE 3000

# Run application
CMD serve -s .
