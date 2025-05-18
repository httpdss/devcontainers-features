#!/bin/sh
# install.sh for struct devcontainer feature
set -e

if ! command -v python3 &> /dev/null; then
    apt-get update && apt-get install -y python3 python3-pip python3-venv
else
    echo "Python3 is already installed."
fi

# # Set up a virtual environment if not present
# VENV_PATH="/opt/struct-venv"
# if [ ! -d "$VENV_PATH" ]; then
#     python3 -m venv $VENV_PATH
#     echo "Virtual environment created at $VENV_PATH."
# else
#     echo "Using existing virtual environment at $VENV_PATH."
# fi

# # Activate the virtual environment
# source $VENV_PATH/bin/activate

# # Upgrade pip to the latest version
# pip install --upgrade pip

# Install struct Python module from GitHub using pip
pip install --no-cache-dir git+https://github.com/httpdss/struct.git
