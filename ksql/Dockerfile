FROM confluent_st1

# DOWNLOADS

# COPY SCRIPTS
COPY ./wait-for-it.sh       /opt/bin/wait-for-it.sh
COPY ./wait-for-them.sh     /opt/bin/wait-for-them.sh
COPY ./ksql-start.sh        /opt/bin/ksql-start.sh
COPY ./ksql-install.sh      /opt/bin/ksql-install.sh

# FIX: CONVERT SCRIPTS FROM DOS TO UNIX
RUN apt-get update
RUN apt-get install dos2unix
RUN dos2unix /opt/bin/wait-for-it.sh
RUN dos2unix /opt/bin/wait-for-them.sh
RUN dos2unix /opt/bin/ksql-install.sh
RUN dos2unix /opt/bin/ksql-start.sh

# RUN INSTALL
RUN /opt/bin/ksql-install.sh

ENTRYPOINT /opt/bin/ksql-start.sh