FROM node:16-alpine

# Install git
RUN apk add --no-cache \
  git

# Clone repository
WORKDIR /usr/src/app
RUN git clone https://github.com/sparcs-kaist/taxi-back .

# Load environment variables
COPY .env.back /usr/src/app/.env.development

# Install requirements
RUN npm install
RUN npm install pm2 -g

# Run container
EXPOSE 2000
CMD ["npm", "run", "start"]
