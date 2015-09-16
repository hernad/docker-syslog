docker rm -f syslog

rm -f /tmp/syslogdev/*

docker run -d --name syslog --cap-add syslog  -v /tmp/syslogdev:/dev syslog

