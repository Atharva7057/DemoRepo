# Use an official Node.js runtime as the base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json for dependency installation
COPY package*.json ./

# Install Node.js dependencies
RUN npm install

# Copy the entire application code to the container
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Define the command to run the application
CMD ["node", "server.js"]
