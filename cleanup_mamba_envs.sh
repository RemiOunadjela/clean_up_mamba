#!/bin/bash

# Get the list of all environments except 'base'
envs=$(mamba env list | grep -v '^#' | grep -v '^base' | awk '{print $1}')

# Check if there are any environments to remove
if [ -z "$envs" ]; then
    echo "No environments to remove."
    exit 0
fi

# Print the environments that will be removed
echo "The following environments will be removed:"
echo "$envs"

# Ask for confirmation
read -p "Are you sure you want to proceed? (y/n) " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "Operation cancelled."
    exit 1
fi

# Remove each environment
for env in $envs; do
    echo "Removing environment: $env"
    mamba env remove -n "$env" -y
done

echo "All specified environments have been removed."