@echo off
call init.bat

adb -s emulator-%1 reverse tcp:4566 tcp:4566
adb -s emulator-%1 reverse tcp:8000 tcp:8000
adb -s emulator-%1 reverse tcp:8001 tcp:8001
adb -s emulator-%1 reverse tcp:8002 tcp:8002
adb -s emulator-%1 reverse tcp:8003 tcp:8003
adb -s emulator-%1 reverse tcp:8004 tcp:8004

adb -s emulator-%1 logcat *:W
