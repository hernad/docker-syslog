# syslog container




Create syslog container

     docker build -t syslog .
     ./run_syslog.sh


Monitor logs:

     docker exec -ti syslog tail -f /var/log/syslog


Run logger client (send message to log from other container):

     docker run -v /tmp/syslogdev/log:/dev/log ubuntu logger hello

