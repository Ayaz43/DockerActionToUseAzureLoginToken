#!/bin/sh -l
ls -a $HOME
ls -a $GITHUB_WORKFLOW
ls -a $GITHUB_WORKSPACE
ls -a /root
ls -a /home
cp -R $GITHUB_WORKSPACE/.azure /github/home/.azure
az account show
