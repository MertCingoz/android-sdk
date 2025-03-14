#!/usr/bin/env sh
set -o nounset

export "ANDROID_HOME=$PWD"
export "ANDROID_SDK_ROOT=$PWD"
export "PATH=$PATH:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin"
export "PATH=$PATH:$ANDROID_SDK_ROOT/cmdline-tools/tools/bin"
export "PATH=$PATH:$ANDROID_SDK_ROOT/emulator"
export "PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools"

sdkmanager --update
echo 'y' | sdkmanager "cmdline-tools;latest" "emulator" "platform-tools" "build-tools;36.0.0" > /dev/null
