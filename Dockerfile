FROM golang:1.18 AS builder

WORKDIR /usr/src/app

COPY src/app.go /usr/src/app
RUN go build app.go

FROM scratch
COPY --from=builder /usr/src/app/app /

CMD ["/app"]