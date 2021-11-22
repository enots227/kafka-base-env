#!/bin/bash
export KAFKA_HOME=/opt/kafka

# Wait for dependent services
/opt/bin/wait_for_them.sh

# Kafka Folder
cd $KAFKA_HOME

# KSQL Environment Configuration ########
# set brokers ============
FIND="^bootstrap.servers=.*$"
REPLACE="bootstrap.servers=${KAFKA_BROKERS}"
sed -i "s/${FIND}/${REPLACE}/" config/connector.properties

# stark Kafka connector ##################
exec bin/connect-distributed.sh config/connector.properties
