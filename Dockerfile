FROM alpine:3.7 as builder

RUN apk add --update-cache nodejs \
    && apk add avahi \
    && apk add avahi-dev \
    && apk add avahi-glib
    && apk add avahi-compat-libdns_sd

ENTRYPOINT ["/bin/sh"]
