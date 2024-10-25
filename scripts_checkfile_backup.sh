#!/bin/bash

# Path to the file to check
file_to_check="/var/www/public/var/importexport/product_inventory.json"
destination_dir="/var/www/public/var/importexport/copy_json"  # Set your destination directory backup

while true; do
    if [ -f "$file_to_check" ]; then
        # Get the current date and time
        timestamp=$(date +"%Y%m%d_%H%M%S")

        # Copy the file with a new name based on the timestamp
        cp "$file_to_check" "$destination_dir/product_inventory_$timestamp.json"

        echo "File copied to $destination_dir/product_inventory_$timestamp.json"
    else
        echo "File $file_to_check not found."
    fi

  # Wait for 1 minute before checking again
  sleep 60
done
