#!/bin/bash

# Define the version
VERSION="1.0.0"

# Define the help function
help_function() {
    echo "Usage: internsctl [OPTIONS]"
    echo "Options:"
    echo "--help          Show this help message"
    echo "--version       Show the version of the command"
    echo "cpu getinfo     Get CPU information"
    echo "memory getinfo  Get memory information"
    echo "user create     Create a new user"
    echo "user list       List all regular users"
    echo "user list --sudo-only  List all users with sudo permissions"
    echo "file getinfo    Get file information"
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
    cpu)
        if [[ $2 == "getinfo" ]]; then
            lscpu
        else
            echo "Invalid option: $2"
            echo "Use --help to see valid options"
        fi
        ;;
    memory)
        if [[ $2 == "getinfo" ]]; then
            free
        else
            echo "Invalid option: $2"
            echo "Use --help to see valid options"
        fi
        ;;
    user)
        if [[ $2 == "create" ]]; then
            sudo adduser $3
        elif [[ $2 == "list" ]]; then
            if [[ $3 == "--sudo-only" ]]; then
                grep '^sudo:.*$' /etc/group | cut -d: -f4
            else
                cut -d: -f1 /etc/passwd
            fi
        else
            echo "Invalid option: $2"
            echo "Use --help to see valid options"
        fi
        ;;
    file)
        if [[ $2 == "getinfo" ]]; then
            if [[ $3 == "--size" ]]; then
                stat -c%s "$4"
            elif [[ $3 == "--permissions" ]]; then
                stat -c%A "$4"
            elif [[ $3 == "--owner" ]]; then
                stat -c%U "$4"
            elif [[ $3 == "--last-modified" ]]; then
                stat -c%y "$4"
            else
                stat "$4"
            fi
        else
            echo "Invalid option: $2"
            echo "Use --help to see valid options"
        fi
        ;;
    *)
        echo "Invalid option: $1"
        echo "Use --help to see valid options"
        ;;
esac
