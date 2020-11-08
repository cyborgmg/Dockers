FROM  openjdk:8-jre-buster as runner

WORKDIR /root/

EXPOSE 8080

COPY adaApi-0.0.1.jar .

RUN chmod 777 adaApi-0.0.1.jar

CMD java -jar adaApi-0.0.1.jar
