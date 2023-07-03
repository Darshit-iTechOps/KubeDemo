# Specify the base image
FROM node:14

# Set the working directory
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm install -g npm@latest

RUN npm install

# Copy the rest of the application code
COPY . .

ENV PORT=5000
# Expose the desired port
EXPOSE $PORT

# Define the command to start the backend
CMD [ "npm", "server.js" ]
