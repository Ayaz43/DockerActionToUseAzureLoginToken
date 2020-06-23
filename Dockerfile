FROM marvinbuss/aml-docker:latest

LABEL maintainer="azure/gh-aml"

RUN python -m pip install --upgrade pip
RUN python -m pip install azure-cli

COPY $GITHUB_WORKSPACE/.azure /github/home/.azure

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
