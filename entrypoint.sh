#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo ::set-output name=time::$time

echo "******************************************************"
echo "list $GITHUB_WORKSPACE/.github/workflows/.azure"
ls -a $GITHUB_WORKSPACE/.github/workflows/.azure

echo "Azure version"
az --version

echo "******************************************************"
echo "******************************************************"
ls -a /root

echo "******************************************************"
echo "******************************************************"
az account show
