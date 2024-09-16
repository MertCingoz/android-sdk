#!/usr/bin/env sh
set -o errexit -o nounset

source bin/init.sh

echo 'y' | sdkmanager "platforms;$2" "system-images;$2;$3;$4"
avdmanager --verbose create avd --force \
  --package "system-images;$2;$3;$4" \
  --name "$1" \
  --abi "$4" \
  --device "$1"
