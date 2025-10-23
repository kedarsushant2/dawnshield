# Use a Node.js base image
FROM node:16

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy the rest of the app code
COPY . .

# Expose the port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
