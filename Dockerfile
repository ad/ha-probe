FROM danielapatin/probe:latest

COPY /usr/share/zoneinfo /usr/share/zoneinfo
COPY /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY /go/bin/ipmn2-client /go/bin/ipmn2-client

ENTRYPOINT ["/go/bin/ipmn2-client"]
