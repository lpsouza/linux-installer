#!/bin/bash

# Change to parent directory
cd ..

# Build the test image
docker build -t test-ansible -f tests/Dockerfile ./tests

# Run the test container
docker run --rm -it -v $PWD:/home/test/projects/linux-installer --device /dev/fuse --cap-add SYS_ADMIN --name test-ansible test-ansible bash
