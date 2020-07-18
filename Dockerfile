FROM node:12.18-alpine AS front_dev

RUN apk update && \
    apk upgrade && \
    apk add git=2.24.3-r0

ENV PROJECT_ROOTDIR /app/client/

WORKDIR $PROJECT_ROOTDIR

RUN yarn global add @vue/cli

COPY client/package.json client/yarn.lock $PROJECT_ROOTDIR

RUN yarn install

FROM golang:1.14.4 AS server_dev

ENV PROJECT_SERVER_ROOTDIR /app/server/

WORKDIR $PROJECT_SERVER_ROOTDIR

COPY server/go.mod server/go.sum $PROJECT_SERVER_ROOTDIR

RUN go get golang.org/x/tools/gopls@latest
