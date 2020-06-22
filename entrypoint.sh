#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo ::set-output name=time::$time

cp -R $GITHUB_WORKSPACE/.github/workflows/.azure /github/home/.azure

az account show
