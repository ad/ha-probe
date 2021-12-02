FROM danielapatin/probe:latest

COPY /usr/share/zoneinfo /usr/share/zoneinfo
COPY /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY /go/bin/ipmn2-client /go/bin/ipmn2-client

ENTRYPOINT ["/go/bin/ipmn2-client"]


# Labels
LABEL \
    io.hass.name="0xERR0R/blocky" \
    io.hass.description="Fast and lightweight DNS proxy as ad-blocker for local network with many features" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    maintainer="ad <github@apatin.ru>" \
    org.label-schema.description="Fast and lightweight DNS proxy as ad-blocker for local network with many features" \
    org.label-schema.build-date=${BUILD_DATE} \
    org.label-schema.name="0xERR0R/blocky" \
    org.label-schema.schema-version="1.0" \
    org.label-schema.usage="https://gitlab.com/ad/ha-blocky/-/blob/master/README.md" \
    org.label-schema.vcs-ref=${BUILD_REF} \
    org.label-schema.vcs-url="https://github.com/ad/ha-blocky/" \
    org.label-schema.vendor="HomeAssistant add-ons by ad"
