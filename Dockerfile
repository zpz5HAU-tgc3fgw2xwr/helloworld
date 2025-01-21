# Use a Node.js base image
FROM node:21-alpine

# Set the working directory inside the container
WORKDIR /src

# Copy package files first to leverage Docker caching
COPY package.json package-lock.json ./

# Install dependencies
RUN npm ci

# Copy the rest of the application files
COPY . .

# Build the application
RUN npm run build

# Expose the app's port (default for Vite preview)
EXPOSE 4173

# Start the application
CMD ["npm", "run", "preview"]