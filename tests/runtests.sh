#!/bin/bash

set -e

tox -c /pepper/tox.ini -e "${CODECOV}${TOXENV}"

if [[ $CODECOV == "py" ]]; then
    tox -c /pepper/tox.ini -e coverage,codecov
fi
