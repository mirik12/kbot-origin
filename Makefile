APP=$(shell basename $(shell git remote get-url origin))
REGISTRY=mirik12
VERSION=$(shell git describe --tags --abbrev=0)-$(shell git rev-parse --short HEAD)
TARGETOS=linux #linux darwin windows
TARGETARCH=arm64 #amd64


format:
	gofmt -s -w ./

goget:
	go get 

lint:
	golint

test:
	go test -v

build: format goget
	CGO_ENABLED=0 GODS=${TARGETOS} GOARCH=${TARGETARCH} go build -v -o kbot -ldflags "-X="github.com/mirik12/kbot/cmd.appVersion=${VERSION}

image:
	docker build . -t ${REGISTRY}/${APP}:${VERSION}-${TARGETARCH}

push:
	docker push ${REGISTRY}/${APP}:${VERSION}-${TARGETARCH}

clean:
	rm -rf kbot


