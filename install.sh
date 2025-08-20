#!/bin/bash

# URL of your EC2 server where the hello.sh file is hosted
INSTALL_URL="http://54.176.215.139/hello.sh"

# Download the hello.sh script from the EC2 server
curl -fsSL "$INSTALL_URL" -o hello.sh

# Make it executable
chmod +x hello.sh

# Run the hello.sh script with the provided argument (start or stop)
if [ -z "$1" ]; then
  echo "Usage: ./hello.sh {start|stop}"
  exit 1
fi

./hello.sh "$1"
