FROM confluent

# COPY SCRIPTS
COPY ./schema-registry-start.sh /opt/bin/schema-registry-start.sh

# FIX: CONVERT SCRIPTS FROM DOS TO UNIX
RUN apt-get update
RUN apt-get install dos2unix
RUN dos2unix /opt/bin/schema-registry-start.sh

ENTRYPOINT /opt/bin/schema-registry-start.sh