#!/usr/bin/env bash

# This file tags and uploads an image to Docker Hub.
# Assumes that an image is built via `run_docker.sh`.

# Step 1:
# Create dockerpath
dockerpath="boluuuma/myflaskapp:3.0"

# Step 2:
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u boluuuma
docker tag myflaskapp:3.0 "$dockerpath"

# Step 3:
# Push image to a docker repository
docker push "$dockerpath"
