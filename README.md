# taxi-docker

## Setup

### Add `.env.front`
 - Refer to [taxi-front/.env.example](https://github.com/sparcs-kaist/taxi-front/blob/main/.env.example) and write your own `.env.front`.

### Add `.env.back`
 - Refer to [taxi-back/back.env.example](https://github.com/sparcs-kaist/taxi-back/blob/main/.env.example) and write your own `.env.back`.
 - fixed environments
```
DB_PATH=mongodb://taxi-mongo:27017/taxi // FIXME
SPARCSSSO_REPLACE=true // FIXME
NODE_PORT=2000
```

### Add `.env.mongo`
 - Refer to [.env.mongo.example](.env.mongo.example) and write your own `.env.mongo`.
