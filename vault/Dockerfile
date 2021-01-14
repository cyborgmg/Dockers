FROM ubuntu:18.04

RUN apt-get -qq update && apt-get install -y wget unzip busybox

ENV VAULT_DEV_ROOT_TOKEN_ID="00000000-0000-0000-0000-000000000000"

ENV VAULT_DEV_LISTEN_ADDRESS="0.0.0.0:8200"

ENV VAULT_TOKEN=$VAULT_DEV_ROOT_TOKEN_ID

ENV VAULT_ADDR="http://127.0.0.1:8200"

WORKDIR /usr/bin

RUN  wget -qO- https://releases.hashicorp.com/vault/1.6.0/vault_1.6.0_linux_amd64.zip | busybox unzip -

RUN chmod 777 /usr/bin/vault

WORKDIR /root/

EXPOSE 8200

CMD /usr/bin/vault server -dev --dev-root-token-id=$VAULT_DEV_ROOT_TOKEN_ID -dev-listen-address=$VAULT_DEV_LISTEN_ADDRESS
