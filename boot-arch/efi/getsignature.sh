#!/bin/bash

KF=$(mktemp)

function alldone {
    rm -f $KF
    exit $1
}

if [ $# -gt 1 ]; then
    openssl pkcs8 -inform DER -in $1 -passin pass:$2 -out $KF || alldone 1
else
    openssl pkcs8 -inform DER -nocrypt -in $1 -out $KF || alldone 1
fi

openssl dgst -sha256 -sign $KF || alldone 2
alldone 0

