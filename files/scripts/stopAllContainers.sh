#!/bin/bash

# Check for any running containers
running_containers=$(docker ps -q)

if [ -z "$running_containers" ]; then
    echo "No running containers found."
else
    # Stop all running containers
    docker stop $running_containers
    echo "Stopped the following containers:"
    docker ps -a --filter "status=exited"
fi
