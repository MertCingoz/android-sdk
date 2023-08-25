#!/usr/bin/env sh
set -o errexit -o nounset

export "ANDROID_HOME=$PWD"
export "ANDROID_SDK_ROOT=$PWD"
export "PATH=$PATH:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin"
export "PATH=$PATH:$ANDROID_SDK_ROOT/emulator"
export "PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools"
sdkmanager "emulator" "platform-tools" "build-tools;34.0.0"
