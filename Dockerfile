# Download base image ubuntu 16.04
FROM ubuntu:16.04

# Update Ubuntu Software repository
RUN apt-get update

# Install awscli dependencies
RUN apt-get install -y python-pip libpython-dev python-dev

# Install awscli
RUN pip install awscli
