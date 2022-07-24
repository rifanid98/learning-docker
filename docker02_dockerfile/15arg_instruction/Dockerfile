FROM golang:1.18-alpine

# arg bisa diakses pada saat runtime
ARG app=main

RUN mkdir app
COPY main.go app
RUN mv app/main.go app/${app}.go

EXPOSE 8080

#agar bisa digunakan saat runtime, maka gunakan env
ENV app=${app}

CMD go run app/${app}.go