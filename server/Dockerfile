FROM golang:1.14.4 AS server_dev

ENV PROJECT_SERVER_ROOTDIR /app/server/

WORKDIR $PROJECT_SERVER_ROOTDIR

COPY go.mod go.sum $PROJECT_SERVER_ROOTDIR

RUN go get golang.org/x/tools/gopls@latest

