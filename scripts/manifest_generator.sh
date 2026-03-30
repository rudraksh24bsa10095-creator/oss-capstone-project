#!/bin/bash
# Script 5: Manifest Generator Script
# Takes user input and generates a structured project manifest file

OUTPUT_FILE="output/project_manifest.txt"

echo "========================================"
echo "       PROJECT MANIFEST GENERATOR       "
echo "========================================"
echo "Please enter the following details:"
echo ""

read -p "Project Name   : " PROJECT_NAME
read -p "Your Name      : " AUTHOR_NAME
read -p "Version        : " VERSION
read -p "Description    : " DESCRIPTION
read -p "License        : " LICENSE

CREATED_DATE=$(date +"%Y-%m-%d")

{
    echo "===================================================="
    echo "          PROJECT MANIFEST FILE"
    echo "===================================================="
    echo ""
    echo "Project Name  : $PROJECT_NAME"
    echo "Author        : $AUTHOR_NAME"
    echo "Version       : $VERSION"
    echo "Date Created  : $CREATED_DATE"
    echo "License       : $LICENSE"
    echo ""
    echo "Description:"
    echo "  $DESCRIPTION"
    echo ""
    echo "Git Commands Used:"
    echo "  git init     - Initialize repository"
    echo "  git add .    - Stage all files"
    echo "  git commit   - Save changes"
    echo "  git push     - Upload to remote"
    echo ""
    echo "Generated on  : $(date)"
    echo "===================================================="
} > "$OUTPUT_FILE"

echo ""
echo "Manifest saved to: $OUTPUT_FILE"
echo ""
echo "--- Preview ---"
cat "$OUTPUT_FILE"
