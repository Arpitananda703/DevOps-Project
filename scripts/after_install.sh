#!/bin/bash

echo "Running AfterInstall hook..."

# Navigate to app directory (matches destination in appspec.yml)
cd /home/ec2-user/app

# Install dependencies (adjust this depending on your tech stack)

# If using Node.js
if [ -f package.json ]; then
  echo "Installing Node.js dependencies..."
  npm install
fi

# If using Python
if [ -f requirements.txt ]; then
  echo "Installing Python dependencies..."
  pip install -r requirements.txt
fi

# Add any custom setup here
echo "AfterInstall completed successfully."
