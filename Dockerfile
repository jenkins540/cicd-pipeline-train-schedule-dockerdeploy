FROM node:carbon
WORKDIR /usr/src/app --this is the working directory inside the image
COPY package*.json ./ --copy from the current working directory on the server to the WORKDIR inside the image
RUN npm install 
COPY . . --copy all the source files form the current working directory on the server
EXPOSE 8080
CMD [ "npm", "start" ] --start the node js application
