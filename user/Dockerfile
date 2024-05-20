FROM golang:1.18-alpine

RUN mkdir /app

RUN addgroup -S devgroup
RUN adduser -S -D -h /app devuser devgroup
RUn chown -R devuser:devgroup /app


USER devuser

COPY main.go /app

EXPOSE 8080
CMD go run /app/main.go
