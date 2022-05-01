FROM golang:1.16-alpine

WORKDIR /app

ADD . /app

RUN go build -o /frontend

EXPOSE 9301

CMD [ "/frontend" ]
