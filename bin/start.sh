#!/usr/bin/env sh
set -o errexit -o nounset

source bin/init.sh

device=$1
shift

#emulator -avd pixel_9.0 -port 5558 -no-window -no-audio -no-cache
#emulator -avd $device -no-metrics -no-snapshot-load $*
emulator -avd $device -no-metrics $*
