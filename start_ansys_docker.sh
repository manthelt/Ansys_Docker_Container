#!/bin/bash

# Variables
IMAGE_NAME="ubuntu_ansys"
CONTAINER_NAME="ansys_container"
INSTALLER_DIR="./Electronics_242_linx64/"

# Check if the installer directory exists
if [ ! -d "$INSTALLER_DIR" ]; then
    echo "Error: Installer directory '$INSTALLER_DIR' does not exist."
    exit 1
fi

# Allow X server access for Docker
echo "Configuring X11 access..."
xhost +local:docker >/dev/null 2>&1

# Remove existing container if it exists
if [ $(docker ps -aq -f name=^/$CONTAINER_NAME$) ]; then
    echo "Stopping and removing existing container '$CONTAINER_NAME'..."
    docker stop $CONTAINER_NAME >/dev/null 2>&1
    docker rm $CONTAINER_NAME >/dev/null 2>&1
fi

# Build the Docker image
echo "Building the Docker image..."
docker build -t $IMAGE_NAME .

# Run the container with 8GB memory and X11 forwarding
echo "Starting the Docker container with 8GB memory and X11 forwarding..."
docker run -it --name $CONTAINER_NAME \
    -v $INSTALLER_DIR:/installer \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=$DISPLAY \
    -e QT_X11_NO_MITSHM=1 \
    --memory="8g" \
    --memory-swap="8g" \
    --ulimit nofile=65535:65535 \
    $IMAGE_NAME

# Revoke X server access after the container stops
echo "Revoking X11 access..."
xhost -local:docker >/dev/null 2>&1
