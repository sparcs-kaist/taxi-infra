FROM mongo:4.4

RUN rm /etc/apt/sources.list.d/mongodb-org.list
RUN apt-get update && apt-get -y install cron awscli && apt clean all

# The cron job is scheduled at every 4 am
# you can set cron time at docker-compose also.
ENV CRON_TIME="0 4 * * *" \
  TZ=Asia/Seoul \
  CRON_TZ=Asia/Seoul

ADD dump.sh /dump.sh
RUN chmod +x /dump.sh
CMD /dump.sh
