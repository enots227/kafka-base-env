confluent_home=/opt/confluent

# KSQL Environment Configuration ########
cd $confluent_home/etc/ksqldb

# set listeners ===========
# ensures / -> \/ (forward slashes escape the sed find and replace)
KSQL_LISTENERS=$(echo $KSQL_LISTENERS | sed "s/\//\\\\\//g")

FIND="^listeners=.*$"
REPLACE="listeners=${KSQL_LISTENERS}"
sed -i "s/${FIND}/${REPLACE}/" ksql-server.properties

# set brokers ============
FIND="^bootstrap.servers=.*$"
REPLACE="bootstrap.servers=${KAFKA_BROKERS}"
sed -i "s/${FIND}/${REPLACE}/" ksql-server.properties

# set schema registry ====
# ensures / -> \/ (forward slashes escape the sed find and replace)
SCHEMA_REGISTRY=$(echo $SCHEMA_REGISTRY | sed "s/\//\\\\\//g")

FIND="^#\{0,1\}\s*ksql.schema.registry.url=.*$"
REPLACE="ksql.schema.registry.url=${SCHEMA_REGISTRY}"
sed -i "s/${FIND}/${REPLACE}/" ksql-server.properties

# set kafka connect integration ====
# ensures / -> \/ (forward slashes escape the sed find and replace)
CONNECTOR_URL=$(echo $CONNECTOR_URL | sed "s/\//\\\\\//g")

FIND="^#\{0,1\}\s*ksql.connect.url=.*$"
REPLACE="ksql.connect.url=${CONNECTOR_URL}"
sed -i "s/${FIND}/${REPLACE}/" ksql-server.properties

# stark ksql ##############################
/opt/bin/wait_for_them.sh

cd $confluent_home
bin/ksql-server-start etc/ksqldb/ksql-server.properties
