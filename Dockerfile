FROM node:latest
RUN mkdir /app
WORKDIR /usr/src/app
COPY package.json /app
RUN npm install
COPY . ./
EXPOSE 5000
CMD [ “npm”, “start” ] 
