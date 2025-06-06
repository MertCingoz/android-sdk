# Android Emulator without Android Studio

- [Download](https://developer.android.com/studio#command-line-tools-only) Command line tools only
- Inspired from [emulator-install-using-avdmanager](https://gist.github.com/mrk-han/66ac1a724456cadf1c93f4218c6060ae)

**Directory Structure**
```
$ANDROID_SDK_ROOT/
├── bin/
├── build-tools/
|   └── 36.0.0/
├── cmdline-tools/
|   └── latest/
|   |   └── bin/
|   |       ├── avdmanager
|   |       ├── sdkmanager
|   |       ├── ...
|   └── tools/
|       └── bin/
|           ├── avdmanager
|           ├── sdkmanager
|           ├── ...
|── emulator/
|── licenses/
|── platform-tools/
|   ├─ adb
|   ├─ fastboot
|   ├─ ...
|── platforms/
|   └─ android-36/
|── system-images/
|   └─ android-36/
```


- Download and call init.sh to set PATH for SDK
```sh
bin/download.sh
```
```sh
source bin/init.sh
```
```sh
sdkmanager --list
sdkmanager --update
avdmanager list
```

- Install packages for Android
```sh
bin/install.sh tv_4k android-36 google_apis_playstore arm64-v8a
```

- Restart adb
```sh
bin/restart.sh
```

- Start emulator
```sh
bin/start.sh tv_4k
```
```sh
bin/start.sh tv_4k -no-boot-anim -debug init,metrics -timezone Europe/Warsaw
```

- Debloat
```sh
bin/debloat.sh
```

- Real Device
```
Enable Developer Mode
Enable Do not use lock screen
Enable Usb Debugging
Default Usb configuration = MIDI
Select Usb configuration = MIDI
Disable permission monitoring
You have to disable the PlayProtect from Play Store application, but that's not recommended at all.
```
