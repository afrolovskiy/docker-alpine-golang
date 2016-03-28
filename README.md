# Alpine Golang

Alpine Golang is a docker image based in Alpine linux using a Dockerfile
similar to [google/golang](https://registry.hub.docker.com/u/google/golang/).

This image is [gliderlabs/alpine](https://github.com/gliderlabs/docker-alpine) image.

# DEPRECATED in favor the [official `golang` image](https://github.com/docker-library/golang)

This repo is not longer maintainer and we strongly recommend you use the
official docker `golang` image. This image once had a reason to exists as the
official golang image wasn't based on the alpine OS hence resulted in bigger
image size (>500mb) than needed, times have changed and official docker images
are now adopting Alpine Linux as their base image, hurray!

## Notes

`GOROOT` is set to `/goroot`

`GOPATH` is set to `/gopath`

## Usage

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

## License

See the `LICENSE` file.
