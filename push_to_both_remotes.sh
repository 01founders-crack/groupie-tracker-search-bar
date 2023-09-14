#!/bin/bash

# Check if commit message is supplied
if [ -z "$1" ]; then
  echo "Error: Commit message is empty. Usage: ./push_to_both_remotes.sh [commit_message]"
  exit 1
fi

# Script to push changes to both 'origin' and 'second-remote'

# Ensure you are in the correct branch; replace 'master' with your working branch if different
git checkout master

# Add all changes to the staging area
git add .

# Commit changes using the provided message
git commit -m "$1"

# Push changes to 'origin'
git push origin master

# Push changes to 'second-remote'
git push second-remote master

# Print message indicating that the push operation is complete
echo "Pushed to both repositories successfully."
