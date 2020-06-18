# Container image that runs your code
FROM alpine:3.10

ENV AZURE_CLI_VERSION 2.7.0

RUN apk --update --no-cache add postgresql-client postgresql

RUN apk add --no-cache curl tar openssl sudo bash jq

RUN apk add --virtual=build gcc libffi-dev musl-dev openssl-dev make python3-dev linux-headers

RUN ln -s /usr/bin/python3 /usr/bin/python

RUN curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash


# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
