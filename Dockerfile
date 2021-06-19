FROM golang:1.11.6-alpine3.8
RUN mkdir /app
ADD . /app/
WORKDIR /app
RUN apk update -qq && apk add git
RUN apk add build-base
#RUN go mod download
EXPOSE 8080
RUN go build -o main ./...
CMD ["/app/main"]
