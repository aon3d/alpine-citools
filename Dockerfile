FROM alpine:latest

RUN apk update
RUN apk add openssh
RUN apk add git
