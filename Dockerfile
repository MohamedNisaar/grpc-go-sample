FROM golang:1.22 AS builder

WORKDIR /app
COPY . .

WORKDIR /app/server
# 👇 Set static flags
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /app/server-binary

FROM alpine:latest
WORKDIR /root/
COPY --from=builder /app/server-binary .

ENTRYPOINT ["./server-binary"]

