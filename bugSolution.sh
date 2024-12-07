#!/bin/bash

# This script demonstrates the solution to the globbing and quoting problem.

# Target directory
directory="/tmp/mydir"

# Loop through files and process them safely
find "$directory" -maxdepth 1 -type f -print0 | while IFS= read -r -d $'\0' file; do
  echo "Processing file: $file"
  # ...processing code here... (Safely handles special characters and spaces)
  head -n 1 "$file" 
done