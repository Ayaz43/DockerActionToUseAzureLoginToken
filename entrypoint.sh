#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo ::set-output name=time::$time

echo "******************************************************"

ls -a /root

echo "******************************************************"
echo "******************************************************"
cp -R $GITHUB_WORKSPACE/.github/workflows/.azure /root/.azure

echo "******************************************************"
echo "******************************************************"
echo "After Copy"
ls -a /root/

echo "******************************************************"
echo "******************************************************"
ls -a /root/.azure

echo "******************************************************"
echo "******************************************************"

az account show
