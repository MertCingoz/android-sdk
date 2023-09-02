#!/usr/bin/env sh
set -o errexit -o nounset

platform=mac
#platform=linux
#platform=win

htmlUrl=https://developer.android.com/studio#command-line-tools-only
search="https://dl.google.com/android/repository/commandlinetools-${platform}-[0-9]*_latest.zip"
downloadUrl=$(curl -fsSL ${htmlUrl} | grep -Eo ${search})
tools_path=cmdline-tools/tools

curl -fsSL -O ${downloadUrl}
mkdir -p ${tools_path}
tar xfz *_latest.zip --strip-components=1 -C ${tools_path}

bin/init.sh
