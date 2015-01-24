#!/bin/bash
EMUALTOR_HOME=~/Library/Android/sdk/tools
AVD_NAME=Nexus_5_API_21_x86
PARTITION_SIZE=300
ADB_HOME=~/Library/Android/sdk/platform-tools


${EMUALTOR_HOME}/emulator -avd ${AVD_NAME} -partition-size ${PARTITION_SIZE}