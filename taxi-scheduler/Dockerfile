FROM mongo

RUN apt-get update && apt-get -y install cron && apt-get -y install awscli

ENV CRON_TIME="* * * * *" \
  TZ=Asia/Seoul \
  CRON_TZ=Asia/Seoul

ADD dump.sh /dump.sh
CMD /dump.sh