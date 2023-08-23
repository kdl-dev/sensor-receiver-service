FROM golang:1.21

ARG REDIS_PORT
ENV REDIS_PORT ${REDIS_PORT}

WORKDIR /app

COPY . .

RUN chmod +X scripts/wait-for-it.sh
RUN go build -o sensor-receiver-service cmd/sensor-receiver-service/main.go

CMD ./scripts/wait-for-it.sh redis:$REDIS_PORT --strict --timeout=15 -- ./sensor-receiver-service