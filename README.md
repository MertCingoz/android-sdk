# Android Emulator without Android Studio

- [Download](https://developer.android.com/studio#command-line-tools-only) Command line tools only
- Also check https://gist.github.com/mrk-han/66ac1a724456cadf1c93f4218c6060ae

**Directory Structure**
```
$ANDROID_SDK_ROOT/
├── bin/
├── cmdline-tools/
|   └── bin/
|       ├── avdmanager
|       ├── sdkmanager
|       ├── ...
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

- Set PATH
```
. ./bin/init.sh
```

- List packages
```
sdkmanager --list
avdmanager list
```

- Install packages for Android
```
bin/install.sh android-34 google_apis_playstore arm64-v8a
```

- Restart adb
```
adb kill-server
adb start-server
```

- Start emulator
```
emulator -avd android-34
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
