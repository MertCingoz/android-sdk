@echo off
cd ..

set ANDROID_HOME=%cd%
set ANDROID_SDK_ROOT=%cd%
set PATH=%PATH%;%ANDROID_SDK_ROOT%\cmdline-tools\latest\bin
set PATH=%PATH%;%ANDROID_SDK_ROOT%\emulator
set PATH=%PATH%;%ANDROID_SDK_ROOT%\platform-tools

doskey clear=cls
doskey ls=dir
