#!/bin/sh
# install.sh for struct devcontainer feature
set -e

# Install struct Python module from GitHub using pip
pip3 install --no-cache-dir git+https://github.com/httpdss/struct.git
