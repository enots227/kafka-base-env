FROM kafka

# DOWNLOADS
COPY ./confluentinc-kafka-connect-jdbc-10.0.1.zip   /tmp/confluentinc-kafka-connect-jdbc.zip
COPY ./confluent-community-6.1.0.zip                /tmp/confluent-community.zip

# COPY SCRIPTS
COPY ./confluent-install.sh                         /opt/bin/confluent-install.sh
COPY ./jdbc-connect-install.sh                      /opt/bin/jdbc-connect-install.sh

# FIX: CONVERT SCRIPTS FROM DOS TO UNIX
RUN apt-get update
RUN apt-get install dos2unix
RUN dos2unix /opt/bin/confluent-install.sh
RUN dos2unix /opt/bin/jdbc-connect-install.sh

# RUN INSTALL
RUN /opt/bin/confluent-install.sh
RUN /opt/bin/jdbc-connect-install.sh
