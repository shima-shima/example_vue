FROM node:12.18-alpine AS client_dev

RUN apk update && \
    apk upgrade && \
    apk add git=2.24.3-r0

ENV PROJECT_ROOTDIR /app/client/

WORKDIR $PROJECT_ROOTDIR

RUN yarn global add @vue/cli

COPY package.json yarn.lock $PROJECT_ROOTDIR

RUN yarn install

