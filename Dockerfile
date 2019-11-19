FROM alpine:3.10

COPY root/ /

ADD https://github.com/just-containers/s6-overlay/releases/download/v1.21.8.0/s6-overlay-amd64.tar.gz /tmp/
RUN gunzip -c /tmp/s6-overlay-amd64.tar.gz | tar -xf - -C /; \
    rm -rf /tmp/*

RUN mkdir -p /config \
             /defaults 

RUN adduser -u 1000 -h /config -s /sbin/nologin -S user

ENTRYPOINT ["/init"]