FROM golang:1.4

RUN go get github.com/tools/godep && \
      go get github.com/ejholmes/todo && \
      cd /go/src/github.com/ejholmes/todo && \
      godep go install github.com/ejholmes/todo/cmd/server

ENV PORT 80

CMD ["server"]
