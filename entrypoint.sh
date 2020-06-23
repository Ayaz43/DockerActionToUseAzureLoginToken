#!/bin/sh -l
ls -a $HOME
cp -R $GITHUB_WORKSPACE/.azure /github/home/.azure
az account show
