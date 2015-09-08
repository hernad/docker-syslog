# syslog container




Create syslog container

     docker buld -t syslog .
     docker run -d --name syslog --cap-add syslog -v /tmp/syslogdev:/dev syslog



Monitor logs:

     docker run --volumes-from syslog -t ubuntu tail -f /var/log/syslog


Run logger client (send message to log from other container):

     docker run -v /tmp/syslogdev/log:/dev/log ubuntu logger hello

