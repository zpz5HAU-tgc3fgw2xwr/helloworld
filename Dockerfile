# Use a Node.js base image
FROM node:21-alpine

# Install bash and dependencies for building Node.js
RUN apk add --no-cache bash curl make gcc g++ python3

# Set the working directory inside the container
WORKDIR /app

# Copy the .nvmrc file for Node.js version management
COPY .nvmrc ./

# Install Node.js version based on .nvmrc
RUN NODE_VERSION=$(cat .nvmrc) && \
    npm install -g n && \
    n $NODE_VERSION && \
    ln -sf /usr/local/n/versions/node/$NODE_VERSION/bin/node /usr/local/bin/node && \
    ln -sf /usr/local/n/versions/node/$NODE_VERSION/bin/npm /usr/local/bin/npm

# Copy project files
COPY . .

# Install dependencies
RUN npm ci

# Build the application
RUN npm run build

# Expose the desired port
EXPOSE 3000

# Start the application
CMD ["node", "dist/index.js"]