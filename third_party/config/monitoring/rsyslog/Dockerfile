FROM debian:stretch-slim

RUN apt-get update && \
    apt-get install rsyslog gettext --no-install-recommends -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY rsyslog.conf.template /etc/
COPY run.sh /

CMD ["/bin/bash", "/run.sh"]
