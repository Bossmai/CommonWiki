#!/bin/bash
ADB_HOME=~/Library/Android/sdk/platform-tools

${ADB_HOME}/adb root
${ADB_HOME}/adb remount

#for temp use, just update the run.sh
${ADB_HOME}/adb push ./lib/tools/run.sh /data/tools/

${ADB_HOME}/adb shell chmod 4755 /data/tools/run.sh

${ADB_HOME}/adb shell /system/bin/sh /data/tools/run.sh

#${ADB_HOME}/adb shell /storage/sdcard/tools/run.sh a