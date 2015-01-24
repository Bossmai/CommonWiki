#!/bin/bash
ADB_HOME=~/Library/Android/sdk/platform-tools

${ADB_HOME}/adb root
${ADB_HOME}/adb remount

${ADB_HOME}/adb shell mount -rw -o remount -t yaffs2 /dev/block/mtdblock0 /system
${ADB_HOME}/adb shell chmod 777 /system
${ADB_HOME}/adb push ./lib/busybox /mnt/sdcard/busybox
${ADB_HOME}/adb shell cp /mnt/sdcard/busybox /system/xbin/
${ADB_HOME}/adb shell chmod 4755 /system/xbin/busybox

${ADB_HOME}/adb push ./lib/tools /mnt/sdcard/