FROM confluent_st1

# COPY SCRIPTS
COPY ./wait-for-it.sh           /opt/bin/wait-for-it.sh
COPY ./wait-for-them.sh         /opt/bin/wait-for-them.sh
COPY ./schema-registry-start.sh /opt/bin/schema-registry-start.sh

# FIX: CONVERT SCRIPTS FROM DOS TO UNIX
RUN apt-get update
RUN apt-get install dos2unix
RUN dos2unix /opt/bin/wait-for-it.sh
RUN dos2unix /opt/bin/wait-for-them.sh
RUN dos2unix /opt/bin/schema-registry-start.sh

ENTRYPOINT /opt/bin/schema-registry-start.sh