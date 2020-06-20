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
cp -R $GITHUB_WORKSPACE/.github/workflows/.azure /root/.azure

echo "******************************************************"
echo "******************************************************"
echo "After Copy"
ls -a /root/

echo "******************************************************"
echo "******************************************************"
ls -a /root/.azure
