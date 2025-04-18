#!/usr/bin/env sh
set -o errexit -o nounset

source bin/init.sh

device=$1
shift

sed -i '' 's/^hw\.keyboard = no/hw.keyboard = yes/' "$HOME/.android/avd/$device.avd/config.ini"

# emulator -avd pixel_9.0 -port 5558 -no-window -no-audio -no-cache
emulator -avd $device -no-metrics $*
