#!/usr/bin/env pwsh

param(
    [switch]$Clean
)

$CLEAN_BUILD = $Clean

# If the --clean flag is set, remove the build directory
if ($CLEAN_BUILD) {
    Write-Host "Cleaning build directory..."
    if (Test-Path "build") {
        Remove-Item -Path "build" -Recurse -Force
    }
}

# Build the example project using CMake
cmake -S . -B build
cmake --build build
