FROM java

# DOWNLOADS
COPY ./kafka_2.13-2.7.0.tgz     /tmp/kafka.tgz

# COPY SCRIPTS
COPY ./kafka-install.sh         /opt/bin/kafka-install.sh
COPY ./kafka-start.sh           /opt/bin/kafka-start.sh

# FIX: CONVERT SCRIPTS FROM DOS TO UNIX
RUN apt-get update
RUN apt-get install dos2unix
RUN dos2unix /opt/bin/kafka-install.sh
RUN dos2unix /opt/bin/kafka-start.sh

# RUN INSTALL
RUN /opt/bin/kafka-install.sh

ENTRYPOINT /opt/bin/kafka-start.sh