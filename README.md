# Android Emulator without Android Studio

- [Download](https://developer.android.com/studio#command-line-tools-only) Command line tools only
- Inspired from [emulator-install-using-avdmanager](https://gist.github.com/mrk-han/66ac1a724456cadf1c93f4218c6060ae)

**Directory Structure**
```
$ANDROID_SDK_ROOT/
├── bin/
├── cmdline-tools/
|   └── tools/
|   |   └── bin/
|   |       ├── avdmanager
|   |       ├── sdkmanager
|   |       ├── ...
|   └── latest/
|       └── bin/
|           ├── avdmanager
|           ├── sdkmanager
|           ├── ...
|── emulator/
|── platforms/
|   └─ android-34/
|── platform-tools/
|   ├─ adb
|   ├─ fastboot
|   ├─ ...
|── system-images/
|   └─ android-34/
```


- Download and call init.sh to set PATH for SDK
```
bin/download.sh

source bin/init.sh

sdkmanager --list
sdkmanager --update
avdmanager list
```

- Install packages for Android
```
bin/install.sh android-34 google_apis_playstore arm64-v8a
```

- Restart adb
```
bin/restart.sh
```

- Start emulator
```
bin/start.sh android-34
bin/start.sh android-34 -no-boot-anim -debug init,metrics -timezone Europe/Paris
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
