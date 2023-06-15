#!/bin/sh -l

echo "The value of \$1 (the first arg) is $1"
echo "The value of \$2 (the second arg) is $2"

echo GITHUB_API_URL=$GITHUB_API_URL
echo GITHUB_REPOSITORY=$GITHUB_REPOSITORY

RESPONSE=$(curl --request GET --url "$GITHUB_API_URL/octocat")
echo "response=$RESPONSE"

# Get the number of issues
issue_count=3
echo "count=$issue_count" >> $GITHUB_OUTPUT