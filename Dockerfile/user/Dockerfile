FROM golang:1.18-alpine

RUN mkdir /app

RUN addgroup -S brondolgroup
RUN adduser -S -D -h /app brondol brondolgroup
RUN chown -R brondol:brondolgroup /app

USER brondol

COPY main.go /app

EXPOSE 8080
CMD go run /app/main.go