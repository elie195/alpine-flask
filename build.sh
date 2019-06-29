#!/bin/bash

if [ -z ${1} ] ; then
    echo "error: missing argument"
    echo "syntax: ${0} [ owl | hs ]"
    exit 1
fi

if [ ${1} != "owl" || ${1} != "hs" ] ; then
    echo "error: unknown label"
    echo "syntax: ${0} [ owl | hs ]"
    exit 1
fi 

docker build -t local-alpine-flask:${1} .
