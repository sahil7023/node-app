# Use official Node.js runtime as the base image
FROM node:14

# Create and set the working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy the rest of the application
COPY . .

# Expose port 8080
EXPOSE 8080

# Start the Node.js application
CMD ["npm", "start"]
