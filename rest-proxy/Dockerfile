FROM confluent_st1

# DOWNLOADS

# COPY SCRIPTS
COPY ./wait-for-it.sh           /opt/bin/wait-for-it.sh
COPY ./wait-for-them.sh         /opt/bin/wait-for-them.sh
COPY ./rest-proxy-install.sh    /opt/bin/rest-proxy-install.sh
COPY ./rest-proxy-start.sh      /opt/bin/rest-proxy-start.sh

# FIX: CONVERT SCRIPTS FROM DOS TO UNIX
RUN apt-get update
RUN apt-get install dos2unix
RUN dos2unix /opt/bin/wait-for-it.sh
RUN dos2unix /opt/bin/wait-for-them.sh
RUN dos2unix /opt/bin/rest-proxy-install.sh
RUN dos2unix /opt/bin/rest-proxy-start.sh

# RUN INSTALL
RUN /opt/bin/rest-proxy-install.sh

ENTRYPOINT /opt/bin/rest-proxy-start.sh