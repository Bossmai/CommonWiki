#!/bin/bash
ADB_HOME=~/Library/Android/sdk/platform-tools

${ADB_HOME}/adb root
${ADB_HOME}/adb remount

#for temp use, just update the run.sh
${ADB_HOME}/adb shell rm -f /mnt/sdcard/run.sh
${ADB_HOME}/adb push ../../old_run_script/run.sh /mnt/sdcard/scripts

#{ADB_HOME}/adb shell chmod 4755 /mnt/sdcard/scripts/run.sh

${ADB_HOME}/adb shell /system/bin/sh /mnt/sdcard/scripts/run.sh

#${ADB_HOME}/adb shell /storage/sdcard/tools/run.sh a