# Use a Node.js base image
FROM node:21-alpine

# Set the working directory inside the container
WORKDIR /src

# Copy only the files necessary for npm install first (to leverage Docker caching)
COPY package.json package-lock.json ./
COPY .nvmrc ./

# Install Node.js version based on .nvmrc
RUN node -v | grep $(cat .nvmrc) || (npm install -g n && n $(cat .nvmrc))

# Install dependencies
RUN npm ci

# Copy the remaining project files
COPY . .

# Build the application
RUN npm run build

# Expose the desired port (adjust if necessary)
EXPOSE 3000

# Start the application from the build
CMD ["node", "dist/index.js"]