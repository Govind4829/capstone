#!/bin/bash

# Set variables
IMAGE_NAME="praticeuser/dev"  # Replace with your Docker image name
TAG="18"  # Replace with the image tag (e.g., 'prod', 'latest', etc.)
CONTAINER_NAME="apache5-app"  # The name of the running Docker container
PORT="80"  # Port to expose from the container
NEW_PORT="8040"  # New port to expose the container

# Step 1: Ensure Docker is installed

# Step 2: Pull the latest image from Docker registry
echo "Pulling the latest Docker image $IMAGE_NAME:$TAG..."
docker pull $IMAGE_NAME:$TAG

# Step 3: Stop and remove any running container with the same name
#echo "Stopping and removing any existing container named $CONTAINER_NAME..."
#docker stop $CONTAINER_NAME
#docker rm $CONTAINER_NAME

# Step 4: Run the new container with the pulled image
echo "Running the container with the image $IMAGE_NAME:$TAG..."
docker run -d --name $CONTAINER_NAME -p $NEW_PORT:$PORT $IMAGE_NAME:$TAG

# Step 5: Verify if the container is running
if [ $(docker ps -q -f name=$CONTAINER_NAME) ]; then
    echo "Container $CONTAINER_NAME is now running with the image $IMAGE_NAME:$TAG."
else
    echo "Error: Failed to start the container."
    exit 1
fi

