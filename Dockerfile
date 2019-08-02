FROM alpine:3.10 as builder

RUN apk add --update-cache bash \
    && apk add --update-cache avahi \
    && apk add --update-cache avahi-compat-libdns_sd \
    && apk add --update-cache avahi-dev \
    && apk add --update-cache avahi-glib \
    && apk add --update-cache git \
    && apk add --update-cache nodejs \
    && apk add --update-cache yarn

RUN mkdir /opt/homebridge
ADD files/homebridge.tar.gz /opt/homebridge/
WORKDIR /opt/homebridge
