This repository is used for Golang-Http-Fizzbuz

The Second Repository

## HOW TO BUILD

```
$ git clone --recursive https://github.com/Laughingkitten/Golang-Http_ver02.git
$ docker build -t http_fizzbuzz .
$ docker run -d -p 8080:8080 http_fizzbuzz
```

## HOW TO VERIFICATION

```
$ cd client
$ go run httpclient.go

```

### httpclient.go

```
Maxnum でパラメータに渡す整数の数を指定

13の倍数の時だけパラメータに文字列を指定
```


