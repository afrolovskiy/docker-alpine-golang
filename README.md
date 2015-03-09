# Alpine Golang

Alpine Golang is a docker image based in Alpine linux using a Dockerfile
similar to google/golang.

## Notes

`GOROOT` is set to `/goroot`

`GOPATH` is set to `/gopath`

# Usage

Create a Dockerfile in your golang application directory with the following content:

```
FROM kiasaki/alpine-golang

WORKDIR /gopath/src/app
ADD . /gopath/src/app/
RUN go get app

CMD []
ENTRYPOINT ["/gopath/bin/app"]
```

Then you can run the following command in your application directory:

```
docker build -t my/app .
```
