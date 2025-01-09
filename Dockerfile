FROM jenkins/jenkins:lts

USER root

# Install Go
RUN apt-get update && apt-get install -y golang

USER jenkins
