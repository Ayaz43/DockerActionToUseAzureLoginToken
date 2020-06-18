# Container image that runs your code
FROM alpine:3.10

echo "installing Azure CLI"
RUN apk add --no-cache curl tar openssl sudo bash jq

RUN apk --update --no-cache add postgresql-client postgresql

ENV AZURE_CLI_VERSION 2.0.72
RUN apk add py-pip && apk add --virtual=build gcc libffi-dev musl-dev openssl-dev python-dev make

RUN pip --no-cache-dir install azure-cli==${AZURE_CLI_VERSION}


# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
