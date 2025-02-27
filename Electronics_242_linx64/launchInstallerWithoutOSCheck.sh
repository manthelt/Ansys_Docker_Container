#!/bin/bash

# Set the environment variable to bypass OS check
export ANS_IGNOREOS=1

# Notify user
echo "ANS_IGNOREOS set to 1 to bypass OS verification."

# Run the installer
echo "Launching the installer..."
./install

# Check if the installer executed successfully
if [ $? -eq 0 ]; then
    echo "Installer launched successfully."
else
    echo "Error: Installer did not complete successfully."
    exit 1
fi
