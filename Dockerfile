FROM gliderlabs/alpine:3.1
MAINTAINER Frederic Gingras <frederic@gingras.cc> (@kiasaki)

RUN apk update && apk add curl git mercurial bzr

RUN curl -Ls https://storage.googleapis.com/golang/go1.4.2.linux-amd64.tar.gz | \
    tar xvzf - -C / \
    && mv /go /goroot \
    && mkdir /gopath

ENV GOROOT /goroot
ENV GOPATH /gopath
ENV PATH $PATH:$GOROOT/bin:$GOPATH/bin
