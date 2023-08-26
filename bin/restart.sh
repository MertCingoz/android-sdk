#!/usr/bin/env sh
set -o errexit -o nounset

. ./bin/init.sh

adb kill-server
adb start-server
