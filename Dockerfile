# Download base image ubuntu 16.04
FROM ubuntu:16.04

# Update Ubuntu Software repository & installed versions
RUN apt-get update && apt-get upgrade -y

# Install awscli dependencies & git
RUN apt-get install -y python-pip libpython-dev python-dev git build-essential nodejs

# Update pip
RUN pip install --upgrade pip

# Install awscli
RUN pip install awscli

# Install gulp
RUN npm install -g gulp
