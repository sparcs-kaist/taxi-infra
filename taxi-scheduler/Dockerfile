FROM mongo

RUN apt-get update && apt-get -y install cron && apt-get install awscli

RUN (crontab -l ; echo "* * * * * /dump.sh >> /var/log/cron.log") | crontab

CMD cron && tail -f /var/log/cron.log