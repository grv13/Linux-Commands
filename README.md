# Linux-Commands

# Custom Linux Command and Manual Page

This repository contains a custom Linux command `internsctl` and its corresponding manual page.

## internsctl Command

The `internsctl` command is a bash script with the following options:

- `--help`: Show the help message
- `--version`: Show the version of the command

You can run the command with these options like so: `./internsctl --help` or `bash internsctl.sh --version`.

The bash script for the `internsctl` command can be found in the `internsctl.sh` file.

## Manual Page

The manual page for the `internsctl` command provides detailed information about the command, its options, and some usage examples.

You can view the manual page with the `man` command like so: `man internsctl`.

The manual page for the `internsctl` command can be found in the `internsctl.1.gz` file in the `/usr/share/man/man1/` directory.

## Installation

To install the `internsctl` command and its manual page, follow these steps:

1. Clone this repository.
2. Navigate to the directory containing the `internsctl.sh` file.
3. Make the `internsctl.sh` file executable with the `chmod` command: `chmod +x internsctl.sh`.
4. Move the `internsctl.sh` file to a directory in your `PATH`, such as `/usr/local/bin/`, and rename it to `internsctl`.
5. Decompress the `internsctl.1.gz` file with the `gunzip` command: `gunzip internsctl.1.gz`.
6. Move the `internsctl.1` file to the `/usr/share/man/man1/` directory.
7. Compress the `internsctl.1` file with the `gzip` command: `gzip internsctl.1`.
8. Update the `man` database with the `mandb` command: `sudo mandb`.

Now, you should be able to use the `internsctl` command and view its manual page.

## Usage

To use the `internsctl` command, simply type `internsctl` followed by one of the options. For example:

- To view the help message, type: `internsctl --help`.
- To view the version of the command, type: `internsctl --version`.

To view the manual page for the `internsctl` command, type: `man internsctl`.

## Screenshots
![intersctlCMDop](https://github.com/grv13/Linux-Commands/assets/118931467/cdf1d391-f0c1-464f-8565-ea0fc7d903bd)

you should be able to view your manual page with "man internsctl"
![manCMDoutput](https://github.com/grv13/Linux-Commands/assets/118931467/8afb1bf2-64ea-436b-8c43-6d2588d0e4af)

