# Linux-Commands

# Custom Linux Command and Manual Page

This repository contains a custom Linux command `internsctl` and its corresponding manual page.

## internsctl Command

The `internsctl` command is a bash script with the following options:

- `--help`: Show this help message
- `--version`: Show the version of the command
- `cpu getinfo`: Get CPU information
- `memory getinfo`: Get memory information
- `user create <username>`: Create a new user
- `user list`: List all regular users
- `user list --sudo-only`: List all users with sudo permissions
- `file getinfo [options] <file-name>`: Get file information

The bash script for the `internsctl` command can be found in the `internsctl.sh` file.

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

## Usage

To use the `internsctl` command, simply type `internsctl` followed by one of the options. For example:

- To view the help message, type: `internsctl --help`.
- To view the version of the command, type: `internsctl --version`.
- To get CPU information, type: `internsctl cpu getinfo`.
- To get memory information, type: `internsctl memory getinfo`.
- To create a new user, type: `internsctl user create username`.
- To list all regular users, type: `internsctl user list`.
- To list all users with sudo permissions, type: `internsctl user list --sudo-only`.
- To get file information, type: `internsctl file getinfo filename`.

To view the manual page for the `internsctl` command, type: `man internsctl`.

![Task1 drawio](https://github.com/grv13/Linux-Commands/assets/118931467/6c6b14e3-5130-433e-a74e-ba1035926ddf)


## Screenshots
![intersctlCMDop](https://github.com/grv13/Linux-Commands/assets/118931467/cdf1d391-f0c1-464f-8565-ea0fc7d903bd)

you should be able to view your manual page with "man internsctl"
![manCMDoutput](https://github.com/grv13/Linux-Commands/assets/118931467/8afb1bf2-64ea-436b-8c43-6d2588d0e4af)

![CPUgetinfo](https://github.com/grv13/Linux-Commands/assets/118931467/25fdcdd1-9d22-4682-93b6-78249d567b12)

![memoryGetinfo](https://github.com/grv13/Linux-Commands/assets/118931467/cb4a8595-b336-45a6-a609-bd5eec6da38d)

![image](https://github.com/grv13/Linux-Commands/assets/118931467/26f09b21-c9ab-4c92-b37c-920e0fa1dce1)

![image](https://github.com/grv13/Linux-Commands/assets/118931467/37459cbf-ec74-4222-a550-3db8792e20ff)




![image](https://github.com/grv13/Linux-Commands/assets/118931467/05adc127-7a39-4ab1-ab59-59bff5dd43c5)



