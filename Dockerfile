FROM marvinbuss/aml-docker:latest

LABEL maintainer="azure/gh-aml"

RUN python -m pip install --upgrade pip
RUN python -m pip install azure-cli

RUN echo "#####################################################################"
RUN echo "list github workspace .azure"
RUN ls -a $GITHUB_WORKSPACE/.github/workflows/.azure

FROM centos AS centos
FROM alpine
RUN --mount type=volume,source=$GITHUB_WORKSPACE/.github/workflows/.azure,target=/root/.azure

RUN echo "#####################################################################"
RUN echo "list after copy"
RUN ls -a /root/.azure

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
