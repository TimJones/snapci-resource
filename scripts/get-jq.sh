#!/bin/bash

set -xe

JQ_VERSION="1.5"
JQ_SHA="c6b3a7d7d3e7b70c6f51b706a3b90bd01833846c54d32ca32f0027f00226ff6d"

BIN_DIR=${BIN_DIR:-bin}

wget http://github.com/stedolan/jq/releases/download/jq-${JQ_VERSION}/jq-linux64 -O ${BIN_DIR}/jq
echo "${JQ_SHA} ${BIN_DIR}/jq" | sha256sum -c
chmod +x ${BIN_DIR}/jq
