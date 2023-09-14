#!/bin/bash

# Check if remote URL is supplied
if [ -z "$1" ]; then
  echo "Error: Remote URL is empty. Usage: ./setup_multiple_remotes.sh [second_remote_url]"
  exit 1
fi

# Step 1: Change to the project directory
# Replace '/path/to/your/project' with the absolute path of your local Git project
cd /path/to/your/project

# Step 2: List existing remotes for validation
echo "Existing remotes:"
git remote -v

# Step 3: Add a new remote repository
# Use the provided URL as the second remote repository's URL
git remote add second-remote $1

# Step 4: Confirm that the new remote has been added
echo "Updated remotes:"
git remote -v

# Print a message indicating that the setup is complete
echo "Remote setup complete."
