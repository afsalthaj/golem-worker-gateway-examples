#!/bin/bash

# Check if the version number is provided as an argument
if [ -z "$1" ]; then
  echo "Please provide a version number as an argument."
  echo "Usage: $0 <version-number>"
  exit 1
fi

# Assign the provided version number to a variable
version="$1"

# Use the version variable in the commands
golem-cli api-definition add api-definition.json
golem-cli api-deployment deploy --definition "html-example/${version}.0.0" --host "localhost:9006"
curl -H "Accept: text/html" -X GET "http://localhost:9006/v${version}/100/get-cart-contents"

echo
# Display the constructed URL for the user to try in a browser
echo "Try this URL in browser: http://localhost:9006/v${version}/100/get-cart-contents"
