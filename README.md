# taxi-docker

## Setup

### Build Images (for dev service)

```bash
$ docker build -t taxi-front:latest ./taxi-front
$ docker build -t taxi-back:latest ./taxi-back
```

### Login to AWS ECR (for prod service)

See ["Using Amazon ECR with the AWS CLI"](https://docs.aws.amazon.com/AmazonECR/latest/userguide/getting-started-cli.html).

### Add `.env`

Environments for dev service

```
FRONT_IMAGE=666583083672.dkr.ecr.ap-northeast-2.amazonaws.com/taxi-front:dev
BACK_IMAGE=666583083672.dkr.ecr.ap-northeast-2.amazonaws.com/taxi-back:dev
FRONT_URL=http://localhost:3000
BACK_URL=http://localhost:9000
SOCKET_IO_URL=http://localhost:9000
S3_URL=https://sparcs-taxi-dev.s3.ap-northeast-2.amazonaws.com
FRONT_PORT=3000
BACK_PORT=9000
SESSION_KEY=
JWT_SECRET_KEY=
APP_URI_SCHEME=org.sparcs.taxiApp
SPARCSSSO_CLIENT_ID=
SPARCSSSO_CLIENT_KEY=
AWS_ACCESS_KEY_ID=
AWS_SECRET_ACCESS_KEY=
AWS_S3_BUCKET_NAME=sparcs-taxi-dev
CHANNELTALK_PLUGIN_KEY=
GA_TRACKING_ID=
GOOGLE_APPLICATION_CREDENTIALS=
FIREBASE_CONFIG=
SLACK_WATCHTOWER_WEBHOOK=
```

Environments for prod service

```
FRONT_IMAGE=666583083672.dkr.ecr.ap-northeast-2.amazonaws.com/taxi-front:latest
BACK_IMAGE=666583083672.dkr.ecr.ap-northeast-2.amazonaws.com/taxi-back:latest
FRONT_URL=https://taxi.sparcs.org
BACK_URL=https://taxi.sparcs.org/api
SOCKET_IO_URL=https://taxi.sparcs.org/api
S3_URL=https://sparcs-taxi-prod.s3.ap-northeast-2.amazonaws.com
FRONT_PORT=80
BACK_PORT=81
SESSION_KEY=
JWT_SECRET_KEY=
APP_URI_SCHEME=org.sparcs.taxiApp
SPARCSSSO_CLIENT_ID=
SPARCSSSO_CLIENT_KEY=
AWS_ACCESS_KEY_ID=
AWS_SECRET_ACCESS_KEY=
AWS_S3_BUCKET_NAME=sparcs-taxi-prod
CHANNELTALK_PLUGIN_KEY=
GA_TRACKING_ID=
GOOGLE_APPLICATION_CREDENTIALS=
FIREBASE_CONFIG=
SLACK_WATCHTOWER_WEBHOOK=
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
