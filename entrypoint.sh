#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"

echo "Working space == "
echo $GITHUB_WORKSPACE
echo pwd

jq . ./attestations/attestations.json




