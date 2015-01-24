#!/bin/bash
ADB_HOME=~/Library/Android/sdk/platform-tools

${ADB_HOME}/adb root
${ADB_HOME}/adb remount
${ADB_HOME}/adb shell mkdir -p /data/tools/
${ADB_HOME}/adb push ./lib/tools/ /data/tools/