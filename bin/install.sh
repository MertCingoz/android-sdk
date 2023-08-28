#!/usr/bin/env sh
set -o errexit -o nounset

source bin/init.sh

sdkmanager "system-images;$1;$2;$3"
sdkmanager "platforms;$1"
avdmanager --verbose create avd --force \
    --package "system-images;$1;$2;$3" \
    --name "$1" \
    --abi "$3"
