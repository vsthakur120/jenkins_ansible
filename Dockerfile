FROM jenkins/jenkins:lts-jdk11

ENV DEBIAN_FRONTEND=noninteractive

USER root

RUN apt-get update && apt-get install -y git ansible

# drop back to the regular jenkins user - good practice
USER jenkins

COPY plugins-default.txt /tmp/plugins.txt

RUN jenkins-plugin-cli --plugin-file /tmp/plugins.txt
