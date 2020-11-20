#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"

echo "Working space == "
echo $GITHUB_WORKSPACE

input="./test.json"
while IFS= read -r line
do
  echo "$line"
done < "$input"




