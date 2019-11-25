FROM alpine:latest

RUN apk --update bash curl git openssl && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]