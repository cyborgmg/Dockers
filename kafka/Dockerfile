FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get -qq update && apt-get install -y curl unzip openjdk-11*

WORKDIR /opt

RUN curl -L https://downloads.apache.org/kafka/2.6.0/kafka_2.13-2.6.0.tgz | tar xz

RUN mv /opt/kafka_2.13-2.6.0 /opt/kafka

RUN mkdir -p /opt/kafka/data/zookeeper

RUN mkdir -p /opt/kafka/data/kafka

RUN chmod 1777 /opt/kafka/data/ -R

COPY server.properties /opt/kafka/config/server.properties

COPY zookeeper.properties /opt/kafka/config/zookeeper.properties

COPY cmak-3.0.0.5.zip /opt/cmak-3.0.0.5.zip

RUN unzip cmak-3.0.0.5.zip

RUN rm -rf cmak-3.0.0.5.zip

COPY application.conf /opt/cmak-3.0.0.5/conf/application.conf

EXPOSE 38527

EXPOSE 9092

EXPOSE 2181

EXPOSE 46681

EXPOSE 9000

COPY cmd.sh /opt/cmd.sh

CMD /opt/cmd.sh