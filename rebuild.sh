#!/bin/bash

CLEAN_BUILD=false
# Check if the --clean flag is provided
if [[ "$1" == "--clean" ]]; then
    CLEAN_BUILD=true
fi
# If the --clean flag is set, remove the build directory
if [ "$CLEAN_BUILD" = true ]; then
    echo "Cleaning build directory..."
    rm -rf build
fi

# Build the example project using CMake
cmake -S . -B build
cmake --build build