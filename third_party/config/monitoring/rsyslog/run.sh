#! bash

POD_NAME="${POD_NAME}" NAMESPACE="${NAMESPACE}" ELA_CONTAINER="${ELA_CONTAINER}" \
    envsubst '${POD_NAME},${NAMESPACE},${ELA_CONTAINER}' < \
    /etc/rsyslog.conf.template > /etc/rsyslog.conf

mkdir -p /share/bin
cp /bin/ln /share/bin/ln

rsyslogd -n
