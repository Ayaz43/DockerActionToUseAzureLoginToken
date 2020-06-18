# Container image that runs your code
FROM alpine:3.10

RUN apk add --no-cache curl tar openssl sudo bash jq

RUN apk --update --no-cache add postgresql-client postgresql


RUN apk add py-pip && apk add --virtual=build gcc libffi-dev musl-dev openssl-dev python-dev make

RUN apk add curl -L https://aka.ms/InstallAzureCli | bash


# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
