VERSION=$(shell git describe --tags --abbrev=0)-$(shell git rev-parse --short HEAD)

format:
	gofmt -s -w ./

lint:
	golint

test:
	go test -v

build: format
	CGO_ENABLED=0 GODS=${TARGETOS} GOARCH=${shell dpkg --print-architecture} go build -v -o kbot -ldflags "-X"=https://github.com/mirik12/kbot/cmd.appVersion=v1.0.5=${VERSION}

clean:
	rm -rf kbot


