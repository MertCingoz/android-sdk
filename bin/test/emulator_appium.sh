#!/usr/bin/env sh
set -o errexit -o nounset

. ./bin/test/init.sh

adb devices
appium
