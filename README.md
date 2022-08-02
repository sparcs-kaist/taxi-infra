# taxi-docker

## Setup

### Add `.env.front`
 - Refer to [taxi-front/.env.example](https://github.com/sparcs-kaist/taxi-front/blob/main/.env.example) and write your own `.env.front`.
 - Recommended environments
```
REACT_APP_BACK_URL=https://taxi.sparcs.org:444
REACT_APP_S3_URL=https://sparcs-taxi-prod.s3.ap-northeast-2.amazonaws.com
```

### Add `.env.back`
 - Refer to [taxi-back/back.env.example](https://github.com/sparcs-kaist/taxi-back/blob/main/.env.example) and write your own `.env.back`.
 - Recommended environments
```
DB_PATH=mongodb://taxi-mongo:27017/taxi
SESSION_KEY=<your own session key>
SPARCSSSO_CLIENT_ID=<secret>
SPARCSSSO_CLIENT_KEY=<secret>
SPARCSSSO_REPLACE=true
NODE_PORT=2000
FRONT_URL=https://taxi.sparcs.org
AWS_ACCESS_KEY_ID=<secret>
AWS_SECRET_ACCESS_KEY=<secret>
AWS_S3_BUCKET_NAME=sparcs-taxi-prod
```

## How to use

### Compose up
```bash
$ docker-compose up -d
```

### Build Reverse proxy
 - See [reverse-proxy/README.md](reverse-proxy/README.md)
