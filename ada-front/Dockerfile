FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt -qq update && apt install -y nginx

COPY ./ada.tar.gz /var/www/

WORKDIR /var/www/

RUN tar xfz ada.tar.gz && rm -rf ada.tar.gz

COPY ./ada /etc/nginx/sites-enabled/

EXPOSE 8081

ENV API_URL=localhost:8080

WORKDIR /root/

COPY ./start.sh /root/start.sh

RUN chmod 777 /root/start.sh

CMD /root/start.sh