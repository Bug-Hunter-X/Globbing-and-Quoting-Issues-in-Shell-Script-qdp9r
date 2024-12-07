#!/bin/bash

# This script attempts to process files in a directory,
# but contains a subtle error related to globbing and quoting.

# Target directory (make sure it exists and contains some files)
directory="/tmp/mydir"

# Loop through files and process them
for file in $directory/*; do
  echo "Processing file: $file"
  # ...processing code here... 
  # Suppose it is just printing some info
  head -n 1 "$file"
  # suppose there is a file named 'file with space.txt'
  # This will fail because of space
  # You can also try with special char like *
  #  This will fail as well because of special char
  # It's a common problem with globbing.
  # This script tries to demonstrate this.
  # Add some files with special chars and space to /tmp/mydir 
  # For testing purpose.
done