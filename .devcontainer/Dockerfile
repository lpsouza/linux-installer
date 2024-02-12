FROM ubuntu:22.04

# Avoid warnings by switching to noninteractive
ENV DEBIAN_FRONTEND=noninteractive

# Running apt-get update and upgrade
RUN apt-get update && apt-get upgrade -y

# Install ansible
RUN apt-get install -y ansible git
