FROM ubuntu:14.04
RUN apt-get update -q
RUN apt-get install rsyslog

ADD rsyslogd-50-default.conf /etc/rsyslog.d/50-default.conf  

VOLUME /dev
VOLUME /var/log

CMD rsyslogd -n
