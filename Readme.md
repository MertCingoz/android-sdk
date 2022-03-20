# Android Emulator without Android Studio

- [Download](https://developer.android.com/studio#command-tools) Command line tools only
- Inspired from [emulator-install-using-avdmanager](https://gist.github.com/mrk-han/66ac1a724456cadf1c93f4218c6060ae)
  
**Directory Structure**
```
$ANDROID_SDK_ROOT/
├── .scripts/
├── cmdline-tools/
|   └── latest/
|       └── bin/
|           ├── avdmanager
|           ├── sdkmanager
|           ├── ...
|── emulator/
|── platforms/
|   └─ android-25/
|── platform-tools/
|   ├─ adb
|   ├─ fastboot
|   ├─ ...
|── system-images/
|   └─ android-25/
```

- Set PATH (Windows cmd shortcut)
```
wt.exe -w 0 cmd /k "cd C:\Users\Cngz\git\_scorp\.playground\android-sdk\.scripts && init.bat"
```

- Set PATH (Windows cmd)
```
start cmd
cd C:\Users\Cngz\git\_scorp\.playground\android-sdk\.scripts
init.bat
```

- Set PATH (linux, macOS)
```
cd /Users/mertcingoz/Documents/git/scorp/.playground/android-sdk/.scripts
. ./init.sh
```

- List packages
```
sdkmanager --list
```

- Install packages for Android
```
sdkmanager "system-images;android-19;google_apis;x86"
sdkmanager "system-images;android-21;google_apis;x86"
sdkmanager "system-images;android-23;google_apis;x86"
sdkmanager "system-images;android-22;google_apis;x86"
sdkmanager "system-images;android-24;google_apis;x86"
sdkmanager "system-images;android-25;google_apis;x86"
sdkmanager "system-images;android-26;google_apis;x86"
sdkmanager "system-images;android-27;google_apis;x86"
sdkmanager "system-images;android-28;google_apis;x86"
sdkmanager "system-images;android-29;google_apis;x86"
sdkmanager "system-images;android-30;google_apis;x86"
sdkmanager "system-images;android-31;google_apis;x86_64"
sdkmanager "system-images;android-32;google_apis;x86_64"
sdkmanager "system-images;android-Tiramisu;google_apis;x86_64"
```

- Install patforms for Android
```
sdkmanager "platforms;android-19"
sdkmanager "platforms;android-21"
sdkmanager "platforms;android-22"
sdkmanager "platforms;android-23"
sdkmanager "platforms;android-24"
sdkmanager "platforms;android-25"
sdkmanager "platforms;android-26"
sdkmanager "platforms;android-27"
sdkmanager "platforms;android-28"
sdkmanager "platforms;android-29"
sdkmanager "platforms;android-30"
sdkmanager "platforms;android-31"
sdkmanager "platforms;android-32"
sdkmanager "platforms;android-Tiramisu"
```

- Install emulator and tools
```
sdkmanager "emulator" "platform-tools" "build-tools;32.0.0"
```

- Create emulator device
```
avdmanager --verbose create avd --force --name "pixel_4.4" --device "pixel" --package "system-images;android-19;google_apis;x86" --tag "google_apis" --abi "x86"
avdmanager --verbose create avd --force --name "pixel_5.1" --device "pixel" --package "system-images;android-22;google_apis;x86" --tag "google_apis" --abi "x86"
avdmanager --verbose create avd --force --name "pixel_6.0" --device "pixel" --package "system-images;android-23;google_apis;x86" --tag "google_apis" --abi "x86"
avdmanager --verbose create avd --force --name "pixel_7.0" --device "pixel" --package "system-images;android-24;google_apis;x86" --tag "google_apis" --abi "x86"
avdmanager --verbose create avd --force --name "pixel_5.0" --device "pixel" --package "system-images;android-21;google_apis;x86" --tag "google_apis" --abi "x86"
avdmanager --verbose create avd --force --name "pixel_7.1" --device "pixel" --package "system-images;android-25;google_apis;x86" --tag "google_apis" --abi "x86"
avdmanager --verbose create avd --force --name "pixel_8.0" --device "pixel" --package "system-images;android-26;google_apis;x86" --tag "google_apis" --abi "x86"
avdmanager --verbose create avd --force --name "pixel_8.1" --device "pixel" --package "system-images;android-27;google_apis;x86" --tag "google_apis" --abi "x86"
avdmanager --verbose create avd --force --name "pixel_9.0" --device "pixel" --package "system-images;android-28;google_apis;x86" --tag "google_apis" --abi "x86"
avdmanager --verbose create avd --force --name "pixel_10.0" --device "pixel" --package "system-images;android-29;google_apis;x86" --tag "google_apis" --abi "x86"
avdmanager --verbose create avd --force --name "pixel_11.0" --device "pixel" --package "system-images;android-30;google_apis;x86" --tag "google_apis" --abi "x86"
avdmanager --verbose create avd --force --name "pixel_12.0" --device "pixel" --package "system-images;android-31;google_apis;x86_64" --tag "google_apis" --abi "x86_64"
avdmanager --verbose create avd --force --name "pixel_12.0-1" --device "pixel" --package "system-images;android-32;google_apis;x86_64" --tag "google_apis" --abi "x86_64"
avdmanager --verbose create avd --force --name "pixel_13.0" --device "pixel" --package "system-images;android-Tiramisu;google_apis;x86_64" --tag "google_apis" --abi "x86_64"
```

- Restart adb
```
adb kill-server
adb start-server
```

- Start emulator
```
emulator -avd pixel_11.0
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
