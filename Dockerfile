FROM golang:1.9 as builder 

RUN apt-get update
#RUN go get github.com/Laughingkitten/Golang-Http_ver02

RUN git submodule init
RUN git submodule update

WORKDIR /go/src/github.com/Laughingkitten/Golang-Http_ver01

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o httpserver httpserver.go 




FROM alpine:latest

WORKDIR /test

COPY --from=builder /go/src/github.com/Laughingkitten/Golang-Http_ver01/httpserver .

ENTRYPOINT ["./httpserver"]
