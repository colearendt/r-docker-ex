#!/bin/bash

# requires docker
docker build --tag=my-test-image .
docker run --rm -d --name=my-test-container -p 8787:8787 my-test-image