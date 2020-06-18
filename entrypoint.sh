#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo ::set-output name=time::$time
ls /github/workspace/
echo "list $GITHUB_WORKSPACE/.github/workflows/.azure"
ls -a $GITHUB_WORKSPACE/.github/workflows/.azure

sleep 1

echo "list $GITHUB_WORKSPACE/"
ls -a $GITHUB_WORKSPACE/

sleep 1

echo "installing Azure CLI"
RUN apk add --no-cache curl tar openssl sudo bash jq

RUN apk --update --no-cache add postgresql-client postgresql

ENV AZURE_CLI_VERSION 2.0.72
RUN apk add py-pip && \
    apk add --virtual=build gcc libffi-dev musl-dev openssl-dev python-dev make

RUN pip --no-cache-dir install azure-cli==${AZURE_CLI_VERSION}
