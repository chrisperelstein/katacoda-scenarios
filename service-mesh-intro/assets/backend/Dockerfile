FROM golang:1.16-alpine

WORKDIR /app

ADD . /app

RUN go build -o /backend

EXPOSE 9300

CMD [ "/backend" ]
