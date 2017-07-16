#!/usr/bin/env bash

function bosh_ssh () {
    # confirm vcap@director ssh-key is in ssh-agent or are the default ~/id_[rd]sa
    DIRECTOR_ADDRESS=`director_address`;
    echo "bosh ssh $* --gateway_host $DIRECTOR_ADDRESS --gateway_user vcap"
    bosh ssh $* --gateway_host $DIRECTOR_ADDRESS --gateway_user vcap
}

function director_address () {
    bosh -n target | egrep -o '([0-9]{1,3}[.]){3}[0-9]{1,3}'
}

bosh_ssh $1
