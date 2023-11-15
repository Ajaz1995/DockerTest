# Use an official Ubuntu as a base image
FROM ubuntu:latest

# Install dependencies
RUN apt-get update && \
    apt-get install -y openjdk-11-jdk


# Create a directory for Jenkins agent
RUN mkdir /home/jenkins

WORKDIR /home/jenkins

ENTRYPOINT ["tail", "-f", "/dev/null"]
