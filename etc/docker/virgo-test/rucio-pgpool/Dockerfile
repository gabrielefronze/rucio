# Pgpool2.

FROM debian:buster-slim
MAINTAINER luka <lzalewsk@gmail.com>

# Install Dependencies.
RUN apt-get update && apt-get -f install -y wget gnupg2
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main' >> /etc/apt/sources.list.d/pgdg.list
RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
RUN apt-get update && apt-get -f install -y postgresql-client-10 libpgpool0=4.0.2-1 pgpool2=4.0.2-1 python-pip
RUN pip install Jinja2

# Post Install Configuration.
ADD bin/start-pgpool2.py /usr/bin/start-pgpool2.py
RUN chmod +x /usr/bin/start-pgpool2.py
ADD conf/pcp.conf.template /usr/share/pgpool2/pcp.conf.template
ADD conf/pgpool.conf.template /usr/share/pgpool2/pgpool.conf.template

# Start the container.
CMD start-pgpool2.py
