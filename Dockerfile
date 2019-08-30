FROM golang:1.12-alpine AS builder

WORKDIR /go/src/greeting

COPY src/greeting/main.go .

RUN go get -d -v ./...
RUN CGO_ENABLED=0 GOOS=linux go install -a -installsuffix cgo -v ./...

FROM scratch

WORKDIR /bin

COPY --from=builder /go/bin/greeting /bin

CMD ["/bin/greeting"]
