# Container image that runs your code
FROM python:3.9-alpine

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY . .

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
RUN ["chmod", "+x", "/entrypoint.sh"]
