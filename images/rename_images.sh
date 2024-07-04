#!/bin/bash

# Initialize a counter
counter=1

# Loop through each image file with specific extensions
for file in *.jpg *.jpeg *.png; do
  # Check if the file exists to avoid errors when no files match
  if [ -e "$file" ]; then
    # Extract the file extension
    ext="${file##*.}"
    
    # Form the new filename
    new_name="img${counter}.${ext}"
    
    # Rename the file
    mv "$file" "$new_name"
    
    # Increment the counter
    counter=$((counter + 1))
  fi
done

echo "Renaming completed. Total files renamed: $((counter - 1))"
