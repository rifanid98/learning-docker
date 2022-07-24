FROM golang:1.18-alpine as golang_builder
WORKDIR /app/
# COPY main.go . == COPY main.go WORKDIR == COPY main.go /app/
COPY main.go .
RUN go build -o /app/main main.go
RUN ls -lah

FROM alpine:3
WORKDIR /app/
COPY --from=golang_builder /app/main ./
CMD /app/main