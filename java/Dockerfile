FROM ubuntu:20.04

# COPY SCRIPTS
COPY ./java-install.sh /opt/bin/java-install.sh

ENV TZ="America/Los_Angeles"
# Could probably use default-jre instead of jdk
ENV JAVA_HOME="/usr/lib/jvm/java-1.11.0-openjdk-amd64"
ENV CLASSPATH=".:/usr/lib/jvm/java-1.11.0-openjdk-amd64/lib"
RUN chmod +x /opt/bin/java-install.sh

# FIX: CONVERT SCRIPTS FROM DOS TO UNIX
RUN apt-get update
RUN apt-get install dos2unix
RUN dos2unix /opt/bin/java-install.sh

# RUN INSTALL
RUN /opt/bin/java-install.sh
