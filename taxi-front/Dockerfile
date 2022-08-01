FROM node:16-alpine

# Install git
RUN apk add --no-cache \
  git

# Clone repository
WORKDIR /usr/src/app
RUN git clone https://github.com/sparcs-kaist/taxi-front .

# Load environment variables
COPY .env.front /usr/src/app/.env

# Install requirements
RUN npm install
RUN npm run build

# Run container
EXPOSE 3000
