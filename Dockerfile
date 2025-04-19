FROM golang:1.22 as builder

WORKDIR /app
COPY . .

RUN go mod tidy
RUN go build -o server .

FROM alpine:latest
WORKDIR /root/
COPY --from=builder /app/server .

ENTRYPOINT["./server"]

