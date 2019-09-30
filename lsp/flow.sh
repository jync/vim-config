#!/bin/bash

if [ -x ./node_modules/flow-bin/vendor/flow ]; then
    ./node_modules/flow-bin/vendor/flow "$@"
else
    flow "$@"
fi
