#!/bin/bash

# Script to add last_modified_at to Jekyll posts based on Git history
# Only adds the field if Git modification date is after the published date

set -e

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Check if we're in a git repository
if [ ! -d ".git" ]; then
    echo -e "${RED}Error: This script must be run from the root of a Git repository${NC}"
    exit 1
fi

# Check if _posts directory exists
if [ ! -d "_posts" ]; then
    echo -e "${RED}Error: _posts directory not found. Run this script from your Jekyll site root.${NC}"
    exit 1
fi

# Function to extract date from filename (YYYY-MM-DD format)
extract_date_from_filename() {
    local filename="$1"
    echo "$filename" | grep -oE '^[0-9]{4}-[0-9]{2}-[0-9]{2}' || echo ""
}

# Function to get git last modified date for a file
get_git_last_modified() {
    local file_path="$1"
    git log -1 --format="%ct" -- "$file_path" 2>/dev/null || echo ""
}

# Function to convert timestamp to YYYY-MM-DD
timestamp_to_date() {
    local timestamp="$1"
    if [[ "$OSTYPE" == "darwin"* ]]; then
        # macOS
        date -r "$timestamp" +%Y-%m-%d 2>/dev/null || echo ""
    else
        # Linux
        date -d "@$timestamp" +%Y-%m-%d 2>/dev/null || echo ""
    fi
}

# Function to compare dates (returns 0 if date1 > date2)
date_is_after() {
    local date1="$1"
    local date2="$2"
    [[ "$date1" > "$date2" ]]
}

# Function to check if file already has last_modified_at
has_last_modified_at() {
    local file_path="$1"
    grep -q "^last_modified_at:" "$file_path" 2>/dev/null
}

# Function to add last_modified_at to front matter
add_last_modified_at() {
    local file_path="$1"
    local modified_date="$2"
    
    # Create a temporary file
    local temp_file=$(mktemp)
    
    # Process the file
    awk -v date="$modified_date" '
    BEGIN { in_frontmatter = 0; frontmatter_ended = 0 }
    /^---$/ { 
        if (in_frontmatter == 0) {
            in_frontmatter = 1
            print $0
        } else if (in_frontmatter == 1 && frontmatter_ended == 0) {
            frontmatter_ended = 1
            print "last_modified_at: " date
            print $0
        } else {
            print $0
        }
        next
    }
    { print $0 }
    ' "$file_path" > "$temp_file"
    
    # Replace original file
    mv "$temp_file" "$file_path"
}

# Main processing
processed=0
updated=0

echo "Scanning for Jekyll posts in _posts directory..."
echo "================================================"

# Find all markdown files in _posts
find _posts -name "*.md" -type f | while IFS= read -r file_path; do
    echo "Processing: $file_path"
    processed=$((processed + 1))
    
    # Check if file already has last_modified_at
    if has_last_modified_at "$file_path"; then
        echo -e "  ${YELLOW}Skipping: last_modified_at already exists${NC}"
        continue
    fi
    
    # Extract published date from filename
    filename=$(basename "$file_path")
    published_date=$(extract_date_from_filename "$filename")
    
    if [ -z "$published_date" ]; then
        echo -e "  ${YELLOW}Skipping: Could not extract published date from filename${NC}"
        continue
    fi
    
    # Get git last modified timestamp
    git_timestamp=$(get_git_last_modified "$file_path")
    
    if [ -z "$git_timestamp" ]; then
        echo -e "  ${YELLOW}Skipping: Could not get Git modification date${NC}"
        continue
    fi
    
    # Convert timestamp to date
    git_modified_date=$(timestamp_to_date "$git_timestamp")
    
    if [ -z "$git_modified_date" ]; then
        echo -e "  ${YELLOW}Skipping: Could not convert Git timestamp to date${NC}"
        continue
    fi
    
    # Compare dates
    if date_is_after "$git_modified_date" "$published_date"; then
        add_last_modified_at "$file_path" "$git_modified_date"
        echo -e "  ${GREEN}✓ Added last_modified_at: $git_modified_date${NC}"
        updated=$((updated + 1))
    else
        echo -e "  ${YELLOW}Skipping: Git modified date ($git_modified_date) is not after published date ($published_date)${NC}"
    fi
done

echo "================================================"
echo "Processing complete!"
echo "Note: Run 'git diff' to see the changes made."
