#!/bin/bash

# Define the version
VERSION="1.0.0"

# Define the help function
help_function() {
    echo "Usage: internsctl [OPTIONS]"
    echo "Options:"
    echo "--help          Show this help message"
    echo "--version       Show the version of the command"
}

# Check the provided arguments
if [[ $# -eq 0 ]] ; then
    echo "No arguments provided"
    exit 0
fi

case $1 in
    --help)
        help_function
        ;;
    --version)
        echo "Internsctl version: $VERSION"
        ;;
    *)
        echo "Invalid option: $1"
        echo "Use --help to see valid options"
        ;;
esac
