# Container image that runs your code
FROM alpine:3.10

ENV AZURE_CLI_VERSION 2.0.72

RUN apk add --no-cache curl tar openssl sudo bash jq

RUN apk --update --no-cache add postgresql-client postgresql

RUN apk -U upgrade add py3-pip && apk -U upgrade add gcc libffi-dev musl-dev openssl-dev python-dev make
RUN rm -f /usr/bin/python && ln -s /usr/bin/python /usr/bin/python3

RUN curl -L https://aka.ms/InstallAzureCli | bash


# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
