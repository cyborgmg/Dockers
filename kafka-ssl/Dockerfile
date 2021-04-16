FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get -qq update && apt-get install -y curl unzip megatools openjdk-11-jdk

WORKDIR /opt

RUN curl -L https://downloads.apache.org/kafka/2.6.1/kafka_2.13-2.6.1.tgz | tar xz

RUN mv /opt/kafka_2.13-2.6.1 /opt/kafka

ENV PATH=/opt/kafka/bin/:$PATH

RUN mkdir -p /opt/kafka/data/zookeeper

RUN mkdir -p /opt/kafka/data/kafka

RUN mkdir -p /secret

RUN chmod 1777 /opt/kafka/data/ -R

COPY server.properties /opt/kafka/config/server.properties

COPY zookeeper.properties /opt/kafka/config/zookeeper.properties

COPY kafka.keystore.jks /secret/kafka.keystore.jks

COPY kafka.truststore.jks /secret/kafka.truststore.jks

COPY client.properties /root/client.properties

RUN megadl 'https://mega.nz/#!h5YhxaoI!SrdtUdy40rIPrcR44Bkv-cbHEwfdAwgtM4xe7gARyz8' && \
	unzip cmak-3.0.0.5.zip && \
	rm -rf cmak-3.0.0.5.zip

COPY application.conf /opt/cmak-3.0.0.5/conf/application.conf

RUN apt remove -y unzip megatools && apt autoremove -y

EXPOSE 38527

EXPOSE 9092

EXPOSE 9093

EXPOSE 2181

EXPOSE 46681

EXPOSE 9000

WORKDIR /root/

COPY cmd.sh /opt/cmd.sh

CMD /opt/cmd.sh