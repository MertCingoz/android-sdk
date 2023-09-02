#!/usr/bin/env sh
set -o errexit -o nounset

source bin/init.sh

adb devices
appium
