# Use a minimal Linux base image
FROM alpine:latest

# Install bash for running shell scripts
RUN apk add --no-cache bash

# Set the working directory inside the container
WORKDIR /src

# Copy the entire src directory into the container's working directory
COPY src /src

# Make the main script executable
RUN chmod +x /src/main.sh

# Execute the main script when the container starts
CMD ["bash", "/src/main.sh"]