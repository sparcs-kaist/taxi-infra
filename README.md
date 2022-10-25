# taxi-docker

## Setup

### Add `.env`

```bash
FRONT_URL=https://taxi.sparcs.org
BACK_URL=https://taxi.sparcs.org:444
SOCKET_IO_URL=https://taxi.sparcs.org:444
S3_URL=https://sparcs-taxi-prod.s3.ap-northeast-2.amazonaws.com
FRONT_PORT=80
BACK_PORT=81
SESSION_KEY=session-key
SPARCSSSO_CLIENT_ID=
SPARCSSSO_CLIENT_KEY=
AWS_ACCESS_KEY_ID=
AWS_SECRET_ACCESS_KEY=
AWS_S3_BUCKET_NAME=sparcs-taxi-prod
CHANNELTALK_PLUGIN_KEY=
```

### Create named volumes to store persistent MongoDB data & logs, backend logs

```bash
$ docker volume create taxi-mongo-logs
taxi-mongo-logs
$ docker volume create taxi-mongo-data
taxi-mongo-data
$ docker volume create taxi-back-logs
taxi-back-logs
$ docker volume create taxi-scheduler-logs
taxi-scheduler-logs
```

### Compose up

```bash
docker-compose up -d
```

### ~~Build Reverse proxy~~

- ~~See [reverse-proxy/README.md](reverse-proxy/README.md)~~
