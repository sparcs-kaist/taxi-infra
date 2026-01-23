# taxi-docker

## Production Service Docker-compose & CI/CD Outline Structure

![service-structure](/images/service-structure.png)

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
# Required Environment variables
PROXY_PORT=
OG_PORT=
SESSION_KEY=
JWT_SECRET_KEY=
AWS_ACCESS_KEY_ID=
AWS_SECRET_ACCESS_KEY=

# Environment variables with default values
FRONT_IMAGE=666583083672.dkr.ecr.ap-northeast-2.amazonaws.com/taxi-front:dev
BACK_IMAGE=666583083672.dkr.ecr.ap-northeast-2.amazonaws.com/taxi-back:dev
OG_IMAGE=666583083672.dkr.ecr.ap-northeast-2.amazonaws.com/taxi-og-generator:dev
FRONT_URL=https://taxi.dev.sparcs.org
BACK_URL=https://api.taxi.dev.sparcs.org
IO_URL=https://api.taxi.dev.sparcs.org
OG_URL=https://og-image.taxi.dev.sparcs.org
S3_URL=https://sparcs-taxi-dev.s3.ap-northeast-2.amazonaws.com
AWS_S3_BUCKET_NAME=sparcs-taxi-dev

# Optional Environment variables
CHANNELTALK_PLUGIN_KEY=
KAKAO_SDK_KEY=
GA_TRACKING_ID=
FIREBASE_CONFIG=
SPARCSSSO_CLIENT_ID=
SPARCSSSO_CLIENT_KEY=
GOOGLE_APPLICATION_CREDENTIALS=
TEST_ACCOUNTS=
SLACK_REPORT_WEBHOOK_URL=
SLACK_WATCHTOWER_WEBHOOK=
GTM_ID=
ONEAPP_TOKEN_SECRET=
```

Environments for prod service

```
# Required Environment variables
PROXY_PORT=
OG_PORT=
SESSION_KEY=
JWT_SECRET_KEY=
AWS_ACCESS_KEY_ID=
AWS_SECRET_ACCESS_KEY=
AWS_S3_DUMP_BUCKET_NAME=

# Environment variables with default values
FRONT_IMAGE=666583083672.dkr.ecr.ap-northeast-2.amazonaws.com/taxi-front:latest
BACK_IMAGE=666583083672.dkr.ecr.ap-northeast-2.amazonaws.com/taxi-back:latest
OG_IMAGE=666583083672.dkr.ecr.ap-northeast-2.amazonaws.com/taxi-og-generator:latest
FRONT_URL=https://taxi.sparcs.org
BACK_URL=https://api.taxi.sparcs.org
IO_URL=https://api.taxi.sparcs.org
OG_URL=https://og-image.taxi.sparcs.org
S3_URL=https://taxi.cdn.sparcs.org
AWS_S3_BUCKET_NAME=sparcs-taxi-prod
TEST_ACCOUNTS=["suwon@sparcs.org","otl-android-test@sparcs.org"]

# Optional Environment variables
CHANNELTALK_PLUGIN_KEY=
KAKAO_SDK_KEY=
GA_TRACKING_ID=
FIREBASE_CONFIG=
SPARCSSSO_CLIENT_ID=
SPARCSSSO_CLIENT_KEY=
GOOGLE_APPLICATION_CREDENTIALS=
SLACK_REPORT_WEBHOOK_URL=
SLACK_WATCHTOWER_WEBHOOK=
GTM_ID=
ONEAPP_TOKEN_SECRET=
```

### Create named volumes to store persistent MongoDB data & logs, backend logs

```bash
$ docker volume create taxi-mongo-logs
taxi-mongo-logs
$ docker volume create taxi-mongo-data
taxi-mongo-data
$ docker volume create taxi-redis-data
taxi-redis-data
$ docker volume create taxi-back-logs
taxi-back-logs
$ docker volume create taxi-scheduler-logs
taxi-scheduler-logs
```

### Compose up

```bash
make prod-up # for prod service
make dev-up # for dev service
```

### Compose down

```bash
make prod-down # for prod service
make dev-down # for dev service
```
