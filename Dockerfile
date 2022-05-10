FROM golang:1.18.1-alpine3.15 as builder
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apk/repositories
RUN apk update
RUN apk add git
ENV GO111MODULE "on"
ENV GOPROXY "https://goproxy.cn,direct"