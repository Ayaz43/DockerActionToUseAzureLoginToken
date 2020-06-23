#!/bin/sh -l
ls -a /home
cp -R /home/runner/.azure $GITHUB_WORKSPACE/.azure
cp -R $GITHUB_WORKSPACE/.azure /github/home/.azure
az account show
