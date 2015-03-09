build:
	docker build -t kiasaki/alpine-golang --rm=true .

debug:
	docker run -it --rm kiasaki/alpine-golang /bin/sh

run:
	docker run -i -P alpine-golang
