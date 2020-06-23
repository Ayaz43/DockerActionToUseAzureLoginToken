#!/bin/sh -l
ls -a /home

ls -a /root
cp -R /home/runner/.azure $GITHUB_WORKSPACE/.azure
cp -R $GITHUB_WORKSPACE/.azure /github/home/.azure
az account show
