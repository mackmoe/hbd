FROM alpine:3.7 as builder
RUN apk add --no-cache nodejs-10.16.0-r0 \
    && apk add --no-cache avahi-dev-0.7-r2 \
    && apk add --no-cache avahi-glib-0.7-r2 \
    && apk add --no-cache avahi-0.7-r2 \
    && apk add --no-cache avahi-compat-libdns_sd-0.7-r2 \
    && apk add --no-cache gvfs-avahi-1.40.2-r0

ENTRYPOINT ["/bin/sh"]
