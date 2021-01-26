FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive

ENV HTTP_PORT="8000"

ENV USER root

WORKDIR /root/

RUN apt-get update -qq && apt-get install -y wget maven git git-extras openjdk-11*

RUN mkdir /root/.jenkins

RUN ln -s /root /var/jenkins_home

RUN wget https://get.jenkins.io/war-stable/2.204.4/jenkins.war

EXPOSE 8000

CMD java -jar /root/jenkins.war --httpPort=$HTTP_PORT
