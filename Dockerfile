# Container image that runs your code
FROM alpine:3.9

RUN apk add --no-cache curl tar openssl sudo bash jq

RUN apk --update --no-cache add postgresql-client postgresql

ENV AZURE_CLI_VERSION 2.7.0
RUN apk add py3-pip && \
    apk add --virtual=build gcc libffi-dev musl-dev openssl-dev python3-dev make

RUN pip3 --no-cache-dir install azure-cli==${AZURE_CLI_VERSION}

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
