#!/bin/bash

set -e

# Run script within the directory
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "${BINDIR}" || exit 2

# Execute package scripts
for D in *; do
    if [ -d "${D}" ] && [ "${D}" != "__pycache__" ]; then
        echo "Packaging ${D}"
        "${D}/package.sh"
    fi
done

printf "\n"
