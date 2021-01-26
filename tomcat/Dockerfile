FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive

ENV PORT="8080"

ENV USER root

WORKDIR /root/

RUN apt-get update -qq && apt-get install -y curl openjdk-11-jdk

RUN curl -L https://downloads.apache.org/tomcat/tomcat-8/v8.5.61/bin/apache-tomcat-8.5.61.tar.gz | tar xz

RUN mv apache-tomcat-8.5.61 tomcat

EXPOSE $PORT

CMD /root/tomcat/bin/startup.sh && tail -f /root/tomcat/logs/catalina.out