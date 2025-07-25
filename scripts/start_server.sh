#!/bin/bash

echo "Running ApplicationStart hook..."

cd /home/ec2-user/app || exit

# Start a Node.js server (edit if using a different framework)
echo "Starting application..."
nohup node index.js > app.log 2>&1 &

echo "Application started."
