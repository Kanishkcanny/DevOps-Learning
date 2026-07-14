#!/bin/bash

# Docker Task 1 – Run Your First Container
# Objective: Run an Nginx container and access it from the browser.

# 1. Pull the nginx image
docker pull nginx

# 2. Run the container in detached mode and map port 8080 to container port 80
docker run --name my-nginx -d -p 8080:80 nginx

# 3. Verify it works (Optional CLI verification to check running status)
docker ps

# 4. Stop the container
docker stop my-nginx

# 5. Remove the container
docker rm my-nginx