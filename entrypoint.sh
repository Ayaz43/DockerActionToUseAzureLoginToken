#!/bin/sh -l
ls -a /home/

ls -a /temp

cat ${environmentVariables}

cp -R $GITHUB_WORKSPACE/.azure /github/home/.azure

az account show
