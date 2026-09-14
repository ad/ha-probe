FROM ghcr.io/ipmn/probe:latest

ARG BUILD_ARCH
ARG BUILD_DATE
ARG BUILD_REF

# Labels
LABEL \
    io.hass.name="ad/ha-probe" \
    io.hass.description="Probe" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    maintainer="ad <github@apatin.ru>" \
    org.label-schema.description="Probe" \
    org.label-schema.build-date=${BUILD_DATE} \
    org.label-schema.name="ghcr.io/ipmn/probe" \
    org.label-schema.schema-version="1.0" \
    org.label-schema.usage="https://gitlab.com/ad/ha-probe/-/blob/master/README.md" \
    org.label-schema.vcs-ref=${BUILD_REF} \
    org.label-schema.vcs-url="https://github.com/ad/ha-probe/" \
    org.label-schema.vendor="HomeAssistant add-ons by ad"
