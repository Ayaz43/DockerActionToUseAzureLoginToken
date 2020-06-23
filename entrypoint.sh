#!/bin/sh -l
ls -a ${process.env.HOME}

cp -R $GITHUB_WORKSPACE/.azure /github/home/.azure

az account show
