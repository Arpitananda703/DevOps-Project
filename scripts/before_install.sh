#!/bin/bash

echo "Running BeforeInstall hook..."

# Optional: Clean up old app files before new deployment
APP_DIR="/home/ec2-user/app"

if [ -d "$APP_DIR" ]; then
  echo "Removing old application files..."
  rm -rf $APP_DIR
fi

mkdir -p $APP_DIR

echo "BeforeInstall completed successfully."
