# Base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install -g npm@latest
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose a port (change the port number if needed)
EXPOSE 5000

# Start the application
CMD ["npm", "start"]
