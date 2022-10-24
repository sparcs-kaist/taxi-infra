FROM mongo

RUN apt-get update && apt-get -y install cron && apt-get -y install awscli

ENV CRON_TIME="0 3 * * *" \
  TZ=Asia/Seoul \
  CRON_TZ=Asia/Seoul

ADD run.sh /run.sh
CMD /run.sh