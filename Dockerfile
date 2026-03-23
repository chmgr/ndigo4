FROM golang:latest
LABEL authors="chris"

RUN go install github.com/xlab/c-for-go@latest

#ENV PATH="$PATH:/go/bin/"
RUN mkdir -p /go/src/github.com/chmgr/ndigo4

WORKDIR /go/src/github.com/chmgr/ndigo4
ENTRYPOINT ["make", "all"]