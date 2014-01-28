#!/bin/bash

KF=$(mktemp)

function alldone {
    rm -f $KF
    exit $1
}

openssl pkcs8 -inform DER -nocrypt -in $1 -out $KF || alldone 1
openssl dgst -sha256 -sign $KF || alldone 2
alldone 0

