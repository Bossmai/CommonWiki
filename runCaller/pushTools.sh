#!/bin/bash
ADB_HOME=~/Library/Android/sdk/platform-tools

${ADB_HOME}/adb root
${ADB_HOME}/adb remount
${ADB_HOME}/adb shell mkdir -p /mnt/sdcard/scripts
${ADB_HOME}/adb push ./lib/scripts/ /mnt/sdcard/scripts