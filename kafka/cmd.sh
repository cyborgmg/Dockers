#!/bin/bash
nohup /opt/kafka/bin/zookeeper-server-start.sh /opt/kafka/config/zookeeper.properties &
nohup /opt/kafka/bin/kafka-server-start.sh /opt/kafka/config/server.properties &
/opt/cmak-3.0.0.5/bin/cmak