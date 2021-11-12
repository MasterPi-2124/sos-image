#!/bin/bash

# Print all commands
set -o xtrace

# Get the ArchARM image
aria2c -x15 http://os.archlinuxarm.org/os/ArchLinuxARM-rpi-4-latest.tar.gz

# Build image
docker buildx build --tag sos-lite --file Dockerfile --platform linux/arm64 .

# Extract image
mkdir tmp && cd tmp
