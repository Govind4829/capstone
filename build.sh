#!/bin/bash
set -x

# Set variables
IMAGE_NAME="apache5-app"  # Name of the Docker image
TAG="latest"  # Tag for the image (e.g., latest, dev, prod)

# Step 1: Ensure we are in the directory with the Dockerfile
SCRIPT_DIR=$(/home/ubuntu/apache2-app "$0")
cd "$SCRIPT_DIR" || exit 1

# Step 2: Build the Docker image
echo "Building Docker image $apache5-app:$latest"
docker build -t "$IMAGE_NAME:$TAG" .

# Check if the build was successful
if [ $? -eq 0 ]; then
    echo "Docker image $IMAGE_NAME:$TAG built successfully."
else
    echo "Error: Docker image build failed."
    exit 1
fi

# Optional: Push to Docker Hub (Uncomment if you want to push it)
# echo "Pushing Docker image to Docker Hub..."
# docker push "$IMAGE_NAME:$TAG"
