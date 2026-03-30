#!/bin/bash
# Script 2: Package Checker Script
# Checks if Git is installed on this system

PACKAGE="git"

echo "Checking for package: $PACKAGE"
echo "----------------------------------"

if which $PACKAGE &> /dev/null; then
    echo "[OK] $PACKAGE is INSTALLED."
    VERSION=$(git --version)
    echo "Version: $VERSION"
    echo "Location: $(which $PACKAGE)"
else
    echo "[NOT FOUND] $PACKAGE is NOT installed."
    read -p "Do you want to install it now? (yes/no): " CHOICE
    if [ "$CHOICE" == "yes" ]; then
        sudo apt update && sudo apt install $PACKAGE -y
        echo "Installation complete!"
    else
        echo "Skipping installation."
    fi
fi
