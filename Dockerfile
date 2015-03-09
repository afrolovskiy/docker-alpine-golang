FROM gliderlabs/alpine:3.1

RUN apk update
RUN apk add curl git mercurial bzr

RUN mkdir /goroot /gopath
RUN curl -Ls https://storage.googleapis.com/golang/go1.4.2.linux-amd64.tar.gz | tar xvzf - -C / && mv /go /goroot

ENV GOROOT /goroot
ENV GOPATH /gopath
ENV PATH $PATH:$GOROOT/bin:$GOPATH/bin
