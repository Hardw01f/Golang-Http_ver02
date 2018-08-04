# pull Golang
FROM golang:1.9 as builder 

#RUN go get github.com/Laughingkitten/Golang-Http_ver02

# mkdir 
WORKDIR /go/src/github.com/Laughingkitten/Golang-Http_ver02

# mv Golang-Http_ver01 to /go/src/github.com/Laughingkitten/Golang-Http_ver02
COPY ./Golang-Http_ver01 .

# build
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o httpserver ./httpserver.go 



# pull linux
FROM alpine:latest

# mkdir ./app
WORKDIR /app

# mv builder:/go/src/github.com/Laughingkitten/Golang-Http_ver02/httpserver to /app
COPY --from=builder /go/src/github.com/Laughingkitten/Golang-Http_ver02/httpserver .

# go run
ENTRYPOINT ["./httpserver"]
