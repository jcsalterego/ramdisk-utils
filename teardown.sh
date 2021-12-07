#!/bin/bash

set -e

source $(dirname $0)/config.sh

echo "Name is ${RAMDISK_NAME}"

device=$(df | grep ${RAMDISK_PATH} | awk '{print $1}')
if [ -z "${device}" ]; then
    echo "Device not found"
else
    echo "Destroying ramdisk ${device}"
    hdiutil detach ${device}
fi
