#!/bin/sh -l

cp -R $GITHUB_WORKSPACE/.azure /github/home/.azure

az account show
