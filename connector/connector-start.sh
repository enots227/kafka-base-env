#!/bin/bash
export KAFKA_HOME=/opt/kafka

# Start Kafka Connector
/opt/bin/wait_for_them.sh

cd $KAFKA_HOME
exec bin/connect-distributed.sh config/connector.properties
