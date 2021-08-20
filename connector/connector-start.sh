#!/bin/bash
export KAFKA_HOME=/opt/kafka

# Start Kafka Connector
cd $KAFKA_HOME
exec bin/connect-distributed.sh config/connector.properties
