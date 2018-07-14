FROM centos:centos6

MAINTAINER nigelpoulton@hotmail.com

# Enable EPEL for Node.js
RUN curl -sL https://rpm.nodesource.com/setup_6.x | bash -

# Install Node...
RUN yum install -y nodejs

# Copy app to /src
COPY . /src

# Install app and dependencies into /src
RUN cd /src; npm install

EXPOSE 8080

CMD cd /src && node ./app.js
