#!/bin/sh -l
ls -a /home

cp -R $GITHUB_WORKSPACE/.azure /github/home/.azure

az account show
