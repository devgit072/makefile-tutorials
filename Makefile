hello:
	echo "Hello"

build:
	go build -o ~/go/bin/simpleApp go-applications/simpleApp.go

run:
	go run go-applications/simpleApp.go

compile:
	echo "Compiling for every OS and Platform"
	GOOS=linux GOARCH=arm go build -o ~/go/bin/simpleApp-linux-arm go-applications/simpleApp.go
	GOOS=linux GOARCH=arm64 go build -o ~/go/bin/simpleApp-linux-arm64 go-applications/simpleApp.go
	GOOS=freebsd GOARCH=386 go build -o ~/go/bin/simpleApp-freebsd-386 go-applications/simpleApp.go