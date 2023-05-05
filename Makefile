VERSION:

format:
	gofmt -s -w ./

build:
	go build -v -o kbot -ldflags "-X"=https://github.com/mirik12/kbot/cmd.appVersion=v1.0.5=${VERSION}
