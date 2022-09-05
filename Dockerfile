FROM golang:1.19.0-alpine3.15 as builder
RUN apk update
RUN apk add git
ENV GO111MODULE "on"
ENV GOPROXY "https://goproxy.cn,direct"
