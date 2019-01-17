# Pgpool2.

FROM debian:buster-slim
MAINTAINER luka <lzalewsk@gmail.com>

# Install Dependencies.
RUN apt-get update && apt-get -f install wget gnupg2
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main' >> /etc/apt/sources.list.d/pgdg.list
RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
RUN apt-get update && apt-get install -f postgresql-client-10 pgpool2=4.0.2-1

# Post Install Configuration.
ADD conf/pcp.conf /etc/pgpool2/pcp.conf
ADD conf/pgpool.conf /etc/pgpool2/pgpool.conf
ADD conf/pool_hba.conf /etc/pgpool2/pool_hba.conf
ADD conf/pool_passwd /etc/pgpool2/pool_passwd
RUN chown 105:110 /etc/pgpool2/pool_passwd

# Start script
ADD start-pgpool2.sh /start-pgpool2.sh
RUN chmod 0755 /start-pgpool2.sh

# Start the container.
CMD /start-pgpool2.sh
