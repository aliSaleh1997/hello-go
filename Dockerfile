FROM golang:1.16-alpine

WORKDIR /app

COPY go.* ./

RUN go mod download

COPY *.go ./

RUN go build -o /hello_go

EXPOSE 8080

CMD [ "/hello_go" ]