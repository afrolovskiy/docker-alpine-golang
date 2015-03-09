build:
	docker build -t kiasaki/alpine-golang --rm=true .

debug:
	docker run -i -t --entrypoint=sh kiasaki/alpine-golang

run:
	docker run -i -P alpine-golang
