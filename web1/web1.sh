#!/usr/bin/env bash
# This script will run the first web server

# set -e will stop the execution of this script if a command or pipeline has an error
set -e
# set -u errors if a variable is referenced before being set
set -u

# Update APT cache
apt update -y

# Upgrade repos
apt upgrade -y

# Install Apache2
apt install apache2 -y
