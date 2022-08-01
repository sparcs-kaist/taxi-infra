FROM node:16-alpine

# Install git
RUN apk add --no-cache \
  git

# Clone repository
WORKDIR /usr/src/app
RUN git clone https://github.com/sparcs-kaist/taxi-back .

# Install requirements
RUN npm install

# Run container
EXPOSE 80
CMD ["npm", "start"]
