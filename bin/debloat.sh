#!/usr/bin/env sh
set -o errexit -o nounset

source bin/init.sh

DEVICE=$(adb devices | grep 'emulator' | awk '{print $1}' | head -n 1)
alias eshell="adb -s $DEVICE shell"

eshell cmd uimode night yes
eshell settings put global development_settings_enabled 1
eshell settings put system show_touches 1
eshell settings put global window_animation_scale 0
eshell settings put global transition_animation_scale 0
eshell settings put global animator_duration_scale 0

eshell pm list packages -d
#eshell am force-stop <package_name>
#eshell pm clear <package_name>
#eshell pm clear --cache-only <package_name>
#eshell pm disable <package_name>
#eshell pm disable-user --user 0 <package_name>
#eshell kill [options] <package_name>
#eshell ps
#eshell kill [options] <pid>

disable() {
 eshell am force-stop $1
 eshell pm clear $1
 eshell pm disable-user --user 0 $1
 eshell pm uninstall $1 || true
 eshell pm disable-user --user 0 $1 || true
}

disable com.android.camera2
disable com.android.chrome
#disable com.android.devicelockcontroller
#disable com.android.nfc
disable com.google.android.apps.docs
disable com.google.android.apps.maps
disable com.google.android.apps.photos
disable com.google.android.apps.safetyhub
disable com.google.android.apps.youtube.music
disable com.google.android.calendar
disable com.google.android.contacts
disable com.google.android.deskclock
disable com.google.android.gm
#disable com.google.android.gms.supervision
disable com.google.android.googlequicksearchbox
#disable com.google.android.nfc
disable com.google.android.projection.gearhead
disable com.google.android.youtube

disable com.google.android.apps.messaging
disable com.google.android.dialer
disable com.google.android.apps.wellbeing
