#!/bin/bash

# Define variables

REPO_URL="https://github.com/Shubham0315/Shell_Projects.git"

TARGET_DIR="/home/mobaxterm/Desktop/ShellScripts"

BRANCH="main" # or the branch you want to deploy

BUILD_DIR="/home/mobaxterm/Desktop/ShellScripts/stringManipulation"

# Update the code from the repository
echo "Updating code from the repository..."
cd "$TARGET_DIR" || exit
git pull origin "$BRANCH"

# Build the project (if needed)
echo "Building the project..."
cd "$BUILD_DIR" || exit

# Deploy the project
echo "Deploying the project..."

# Insert deployment commands here
echo "Deployment complete!"
