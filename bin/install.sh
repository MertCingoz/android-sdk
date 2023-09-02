#!/usr/bin/env sh
set -o errexit -o nounset

source bin/init.sh

echo 'y' | sdkmanager "platforms;$1" "system-images;$1;$2;$3"
avdmanager --verbose create avd --force \
    --package "system-images;$1;$2;$3" \
    --name "$1" \
    --abi "$3"
