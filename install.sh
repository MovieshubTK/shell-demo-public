#!/bin/bash

# URL of Server where our script is hosted
INSTALL_URL="http://54.176.215.139/hello.sh"

# Download the hello.sh script from the server
curl -fsSL "$INSTALL_URL" -o hello.sh

# Make it executable
chmod +x hello.sh

# Run the hello.sh script with the provided argument (start or stop)
if [ -z "$1" ]; then
  echo "Please provide specific argument after $0"
  exit 1
fi

exec ./hello.sh "$@"
