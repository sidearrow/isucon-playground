FROM golang:1.16.5-buster as build

WORKDIR /go/src/github.com/isucon/isucon9-qualify

ADD isucon9-qualify/go.mod ./go.mod
ADD isucon9-qualify/go.sum ./go.sum
ADD isucon9-qualify/Makefile ./Makefile
ADD isucon9-qualify/cmd ./cmd
ADD isucon9-qualify/bench ./bench

RUN make

FROM debian:buster-slim as payment

WORKDIR /app
COPY --from=build /go/src/github.com/isucon/isucon9-qualify/bin/payment ./payment

CMD [ "./payment" ]

FROM debian:buster-slim as shipment

WORKDIR /app
COPY --from=build /go/src/github.com/isucon/isucon9-qualify/bin/shipment ./shipment
ADD isucon9-qualify/initial-data/result/shippings_json.txt ./initial-data/result/shippings_json.txt

CMD [ "./shipment" ]