# Build process
#FROM golang:1.16-alpine
FROM golang:1.24.1-alpine3.21


WORKDIR /app

COPY . .
RUN yum update -y
RUN yum upgrade -y
RUN go build -o main .

EXPOSE 8080

CMD [ "./main" ]
