FROM confluent

# COPY CONFIG FILES
COPY ./connector.properties /opt/kafka/config/connector.properties

# COPY SCRIPTS
COPY ./connector-start.sh /connector-start.sh

# FIX: CONVERT SCRIPTS FROM DOS TO UNIX
RUN apt-get update
RUN apt-get install dos2unix
RUN dos2unix /connector-start.sh

ENTRYPOINT /connector-start.sh