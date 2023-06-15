#!/bin/sh -l

echo "The value of \$1 (the first arg) is $1"
echo "The value of \$2 (the second arg) is $2"

# Get the number of issues
issue_count=3
echo "count=$issue_count" >> $GITHUB_OUTPUT