FROM ubuntu:18.04

RUN apt-get update && apt-get -y install cron && apt-get install awscli

RUN (crontab -l ; echo "0 4 * * * /dump.sh >> /var/log/cron.log") | crontab

CMD cron && tail -f /var/log/cron.log