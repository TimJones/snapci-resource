export TMPDIR=${TMPDIR:-/tmp}

payload=${TMPDIR}/snapci-resource-request

curl_wrapper () {
    user=$1
    auth=$2
    uri=$3
    curl -Ss -u ${user}:${auth} -X GET -H 'Accept: application/vnd.snap-ci.com.v1+json' ${uri}
}
