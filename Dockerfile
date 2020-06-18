# Container image that runs your code
FROM alpine:3.10

ENV AZURE_CLI_VERSION 2.7.0

RUN apk add --virtual=build gcc libffi-dev musl-dev openssl-dev make python3-dev linux-headers

RUN curl -L https://aka.ms/InstallAzureCli | bash


# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
