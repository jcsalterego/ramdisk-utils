#!/bin/bash

set -e

source $(dirname $0)/config.sh

echo "Name is ${RAMDISK_NAME}"

device=$(df | grep ${RAMDISK_PATH} | awk '{print $1}')
if [ -n "${device}" ]; then
    echo "Ramdisk already exists."
    df | grep ${RAMDISK_PATH}
    exit 0
fi

echo "Creating ramdisk of ${RAMDISK_NUM_SECTORS} sectors (512 bytes per sector)"

device=$(hdiutil attach -nobrowse -nomount "ram://${RAMDISK_NUM_SECTORS}")
echo "Device created: ${device}"

echo "Formatting ramdisk"
diskutil erasevolume HFS+ "${RAMDISK_NAME}" ${device}
