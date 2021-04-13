FROM golang:1.11-alpine

LABEL maintainer='S2010455003@students.fh-hagenberg.at'

WORKDIR /src

COPY src/*.go ./

RUN go build -o /usr/myapp

EXPOSE 8888

ENTRYPOINT /usr/myapp