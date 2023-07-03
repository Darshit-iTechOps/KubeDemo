# Specify the base image
FROM node:14-alpine

# Set the working directory
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the desired port
EXPOSE 3000

# Define the command to start the backend
CMD [ "npm", "start" ]
