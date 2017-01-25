export TMPDIR=${TMPDIR:-/tmp}

payload=${TMPDIR}/snapci-resource-request

curl_wrapper () {
    user=$1
    auth=$2
    uri=$3
    curl -Ss -u ${user}:${auth} -X GET -H 'Accept: application/vnd.snap-ci.com.v1+json' ${uri}
}

add_pipeline_metadata_basic() {
    jq ". + [
      {name: \"counter\", value: $(jq '.counter' < $1)},
      {name: \"result\", value: $(jq '.result' < $1)},
      {name: \"commit\", value: $(jq '.commits | .[0].sha' < $1)},
      {name: \"author\", value: $(jq '.commits | .[0].author' < $1)},
      {name: \"message\", value: $(jq '.commits | .[0].message' < $1), type: \"message\"},
      {name: \"time\", value: $(jq '.commits | .[0].time' < $1), type: \"time\"}
    ]"
}

pipeline_metadata() {
    jq -n "[]" | \
        add_pipeline_metadata_basic $1
}
