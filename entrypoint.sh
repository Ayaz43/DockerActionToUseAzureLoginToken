#!/bin/sh -l

cp -R $GITHUB_WORKSPACE/.github/workflows/.azure /github/home/.azure

az account show
