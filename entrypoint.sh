#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo ::set-output name=time::$time
ls /github/workspace/
echo "list $GITHUB_WORKSPACE/.github/workflows/.azure"
ls -a $GITHUB_WORKSPACE/.github/workflows/.azure

sleep 1

echo "list $GITHUB_WORKSPACE/"
ls -a $GITHUB_WORKSPACE/

sleep 1

echo "installing Azure CLI"
curl -L https://aka.ms/InstallAzureCli | bash
