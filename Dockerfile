# Container image that runs your code
#FROM alpine:3.10
FROM ubuntu:18.04

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

#Install JQ
#RUN add-apt-repository ppa:eugenesan/ppa
RUN apt-get update -y
RUN apt-get install jq -y

# Code file to execute when the docker container starts up (`entrypoint.sh`)
RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]