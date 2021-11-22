confluent_home=/opt/confluent

# KSQL Environment Configuration ########
cd $confluent_home/etc/kafka-rest

# set brokers ============
FIND="^bootstrap.servers=.*$"
REPLACE="bootstrap.servers=${KAFKA_BROKERS}"
sed -i "s/${FIND}/${REPLACE}/" kafka-rest.properties

# stark REST proxy #######################
/opt/bin/wait_for_them.sh

cd $confluent_home
bin/kafka-rest-start etc/kafka-rest/kafka-rest.properties
