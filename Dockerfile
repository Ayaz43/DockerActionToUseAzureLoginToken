# Container image that runs your code

ENV AZURE_CLI_VERSION 2.0.72

FROM python:3-alpine
RUN apk add --no-cache curl tar openssl sudo bash jq

RUN apk --update --no-cache add postgresql-client postgresql

RUN python -m pip install --upgrade pip

RUN pip3 install requests paho-mqtt

COPY NumSide.py /home/mehdi/Download/NumSide.py

CMD ["python","/home/mehdi/Download/NumSide.py"]

RUN curl -L https://aka.ms/InstallAzureCli | bash


# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
