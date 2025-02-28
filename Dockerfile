FROM golang:1.23.6-alpine3.21 AS builder

WORKDIR /app
COPY . .

RUN go mod tidy
RUN go build -o main ./cmd/


FROM alpine:3.21

WORKDIR /app
COPY --from=builder /app/main .

EXPOSE 8080

CMD ["./main"]
