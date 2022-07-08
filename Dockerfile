FROM golang:1.18

WORKDIR /usr/src/app

COPY src/app.go /usr/src/app

ENTRYPOINT ["go", "run", "app.go"]