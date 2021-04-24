## Geração de chaves

openssl genrsa -out root.key
openssl req -new -x509 -key root.key -out root.crt
openssl genrsa -out server.key
openssl req -new -key server.key -out server_reqout.txt
openssl x509 -req -in server_reqout.txt -days 3650 -sha1 -CAcreateserial -CA root.crt -CAkey root.key -out server.crt
openssl genrsa -out client.key
openssl req -new -key client.key -out client_reqout.txt
keytool -keystore kafka.truststore.jks -alias CARoot -import -file root.crt
# keytool -keystore kafka.keystore.jks -alias localhost -validity 365 -genkey -keyalg RSA -ext SAN=DNS:kafka-ssl
#  quando perguntar pelo nome(CN) coloque kafka-ssl
keytool -keystore kafka.keystore.jks -alias localhost -certreq -file kafka.unsigned.crt
openssl x509 -req -CA root.crt -CAkey root.key -in kafka.unsigned.crt -out kafka.signed.crt -days 365 -CAcreateserial
keytool -keystore kafka.keystore.jks -alias CARoot -import -file root.crt
keytool -keystore kafka.keystore.jks -alias localhost -import -file kafka.signed.crt


# keytool -keystore client.keystore.jks -alias localhost -validity 365 -genkey -keyalg RSA -ext SAN=DNS:kafka-ssl
# quando perguntar pelo nome(CN) coloque kafka-ssl
keytool -keystore client.keystore.jks -alias localhost -certreq -file client.unsigned.cert
openssl x509 -req -CA root.crt -CAkey root.key -in client.unsigned.cert -out client.signed.cert -days 365 -CAcreateserial
keytool -keystore client.keystore.jks -alias CARoot -import -file root.crt
keytool -keystore client.keystore.jks -alias localhost -import -file client.signed.cert

## Com o kafka startado altere seu /etc/hosts para isso
127.0.0.1	localhos, kafka-ssl

# Teste de mensageria

- Consumer
kafka-console-consumer.sh --bootstrap-server kafka-ssl:9093 --topic test --consumer.config client.properties --from-beginning

- Producer
kafka-console-producer.sh --bootstrap-server kafka-ssl:9093 --topic test --producer.config client.properties

- Purge
kafka-topics.sh --zookeeper kafka-ssl:2181 --delete --topic topicName
