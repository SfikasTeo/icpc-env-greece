#!/bin/bash

# Check for any stopped or created containers
stopped_or_created_containers=$(docker ps -a -f status=exited -f status=created -q)

if [ -z "$stopped_or_created_containers" ]; then
    echo "No stopped or created containers found."
else
    # Remove only stopped or created containers
    docker rm $stopped_or_created_containers
    echo "Removed the following containers:"
    echo "$stopped_or_created_containers"
fi
