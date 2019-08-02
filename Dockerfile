FROM alpine:3.7 as builder

RUN apk add --update-cache git \
    && apk --update-cache add avahi \
    && apk --update-cache add avahi-compat-libdns_sd
    && apk --update-cache add avahi-dev \
    && apk --update-cache add avahi-glib \
    && apk --update-cache add nodejs

RUN mkdir /homebridge

WORKDIR /homebridge

RUN git clone
install -g --unsafe-perm homebridge

ENTRYPOINT ["/bin/sh"]
