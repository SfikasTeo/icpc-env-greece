#!/bin/bash

# Check for any stopped containers
stopped_containers=$(docker ps -a -q -f status=exited)

if [ -z "$stopped_containers" ]; then
    echo "No stopped containers found."
else
    # Start all stopped containers
    docker start $stopped_containers
    echo "Started the following containers:"
    docker ps --filter "id=$stopped_containers"
fi
