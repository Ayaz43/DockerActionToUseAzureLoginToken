#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo ::set-output name=time::$time
ls /github/workspace/

echo "list $GITHUB_WORKSPACE/"
ls -a $GITHUB_WORKSPACE/



echo "Azure version"
az --version
