FROM starlabio/centos-base:3
MAINTAINER Mark V. Senofsky <mark.senofsky@starlab.io>

# Install dependencies for the Crucible precheck CI stage
COPY requirements.txt .
RUN yum -y update && \
    yum -y install python3-pip && \
    pip3 install -r requirements.txt

CMD ["/bin/bash", "-l"]
