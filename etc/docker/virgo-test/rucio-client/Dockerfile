# Copyright 2014-2018 CERN for the benefit of the ATLAS collaboration.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# You may not use this file except in compliance with the License.
# You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
#
# Authors:
# - Thomas Beermann, <thomas.beermann@cern.ch>, 2018
# - Cedric Serfon, <cedric.serfon@cern.ch>, 2018

FROM centos/python-36-centos7

USER root

# RUN yum install sudo

RUN pip install rucio-clients

# WORKDIR /opt

ADD rucio.cfg /opt/rucio/etc/
RUN chmod 644 /opt/rucio/etc/rucio.cfg

# ADD activate_rucio_global_completion.sh /opt/rucio/tools
# RUN cat /opt/rucio/tools/activate_rucio_global_completion.sh >> /root/.bash_profile

# RUN mkdir /var/log/rucio
# RUN mkdir /var/log/rucio/trace
# RUN chmod 777 /var/log/rucio

ADD certs/ca.pem /opt/rucio/etc/web/CERN-bundle.pem
ADD certs/ca.pem /opt/rucio/etc/web/ca.crt
ADD certs/usercert.pem /opt/rucio/etc/web/usercert.pem

ADD certs/server.crt /etc/grid-security/hostcert.pem
ADD certs/server.key /etc/grid-security/hostkey.pem
RUN chmod 400 /etc/grid-security/hostkey.pem

# ADD setup_demo.sh /
# ADD setup_data.py /
# ADD wait-for-it.sh /

# EXPOSE 443

# ENV PATH $PATH:/opt/rucio/bin
