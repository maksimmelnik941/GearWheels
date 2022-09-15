#!/bin/bash

function run_cmd {
    bash -c "$@"
    local status=$?
    if (( status != 0 )); then
        echo "Error: $1" >&2
        exit $status
    else
        echo "OK - $1"
    fi
}