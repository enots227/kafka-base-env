FROM java

# DOWNLOADS
COPY ./apache-zookeeper-3.7.0-bin.tar.gz    /tmp/apache-zookeeper.tar.gz

# COPY SCRIPTS
COPY ./zookeeper-install.sh                 /opt/bin/zookeeper-install.sh
COPY ./zookeeper-start.sh                   /opt/bin/zookeeper-start.sh

# FIX: CONVERT SCRIPTS FROM DOS TO UNIX
RUN apt-get update
RUN apt-get install dos2unix
RUN dos2unix /opt/bin/zookeeper-install.sh
RUN dos2unix /opt/bin/zookeeper-start.sh

# RUN INSTALL
RUN /opt/bin/zookeeper-install.sh

ENTRYPOINT /opt/bin/zookeeper-start.sh