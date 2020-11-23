FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive

ENV USER root

RUN apt-get update && apt-get install -y wget gnupg mongo*
	
COPY mongodb.conf /etc/mongodb.conf
	
EXPOSE 27017

CMD /etc/init.d/mongodb start && tail -f /var/log/mongodb/mongodb.log
