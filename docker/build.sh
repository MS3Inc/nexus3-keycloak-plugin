#!/bin/bash
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"

IMAGE_NAME=nexus-oss/nexus3
IMAGE_VERSION=3.19.1-01

docker build -t ${IMAGE_NAME}:${IMAGE_VERSION} \
             -f "${DIR}/Dockerfile" "${DIR}"
