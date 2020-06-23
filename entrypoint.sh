#!/bin/sh -l

cat ${environmentVariables}

cp -R $GITHUB_WORKSPACE/.azure /github/home/.azure

az account show
