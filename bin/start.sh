#!/usr/bin/env sh
set -o errexit -o nounset

. ./bin/init.sh

emulator -avd $1 \
    -no-boot-anim \
    -debug init,metrics \
    -timezone Europe/Paris
