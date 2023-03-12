#!/usr/bin/env bash

function try() {
    [[ $- = *e* ]]

    SAVED_OPT_E=$?

    set +e
}

function catch() {
    export EXIT_CODE=$?

    # shellcheck disable=SC2004
    (($SAVED_OPT_E)) && set +e

    return $EXIT_CODE
}

function throw() {
    exit "$1"
}

function throw_errors() {
    set -e
}

function ignore_errors() {
    set +e
}

export try catch throw throw_errors ignore_errors
