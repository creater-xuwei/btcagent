TARGET = spideragent

all:
	go build -o ${TARGET}

windows:
	CGO_ENABLED=0 GOOS=windows GOARCH=amd64 go build -o ${TARGET}.exe

clean:
	rm -f ${TARGET}.exe ${TARGET}