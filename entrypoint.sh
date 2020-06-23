#!/bin/sh -l
echo " HOME "
ls -a $HOME
echo " GITHUB_WORKFLOW "
ls -a $GITHUB_WORKFLOW
echo " GITHUB_WORKSPACE "
ls -a $GITHUB_WORKSPACE
cp -R $GITHUB_WORKSPACE/.azure /github/home/.azure
az account show
