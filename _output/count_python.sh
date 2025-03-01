#!/bin/bash
# Define the directory where CSV files are stored
CSV_DIR="/home/ubuntu/projects/assignment-01-JohnnyHuynh274/_output"

# Define the CSV files
FILES=("question_tags.csv" "questions.csv")

# Initialize total count
total_count=0

# Loop through each CSV file
for file in "${FILES[@]}"; do
    file_path="$CSV_DIR/$file"
    
    if [ -f "$file_path" ]; then  # Check if file exists
        count=$(grep -i "python" "$file_path" | wc -l)  # Count lines with "python"
        echo "$file: $count lines contain 'python'"
        total_count=$((total_count + count))
    else
        echo "File $file not found!"
    fi
done

# Print total count
echo "Total lines containing 'python': $total_count"

