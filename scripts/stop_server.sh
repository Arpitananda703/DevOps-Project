#!/bin/bash

# Simple stop script for CodeDeploy ApplicationStop phase

echo "Stopping existing application..."

# Example: kill Node.js app running on port 3000
PID=$(lsof -t -i:3000)

if [ -n "$PID" ]; then
  echo "Found running process on port 3000. Killing PID $PID"
  kill -9 $PID
else
  echo "No application running on port 3000"
fi

echo "Application stopped successfully"
