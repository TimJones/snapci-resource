FROM alpine:3.4

MAINTAINER Tim Jones <tim@spotahome.com>

RUN apk add --no-cache openssl

ENV JQ_VERSION=1.5 \
    JQ_SHA=c6b3a7d7d3e7b70c6f51b706a3b90bd01833846c54d32ca32f0027f00226ff6d

RUN set -e \
 && wget https://github.com/stedolan/jq/releases/download/jq-${JQ_VERSION}/jq-linux64 -O /usr/bin/jq \
 && echo "${JQ_SHA}  /usr/bin/jq" | sha256sum -c \
 && chmod +x /usr/bin/jq
