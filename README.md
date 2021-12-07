# Ramdisk Utils

## Example Usage

### Setup

```
$ ./setup.sh
Name is ramdisk
Creating ramdisk of 10240 sectors (512 bytes per sector)
Device created: /dev/disk2
Formatting ramdisk
Started erase on disk2
Unmounting disk
Erasing
Initialized /dev/rdisk2 as a 5 MB case-insensitive HFS Plus volume
Mounting disk
Finished erase on disk2 (ramdisk)
```

### Load Config

```
$ source ./config.sh
```

### Use Ramdisk

```
$ screencapture -o ${RAMDISK_PATH}/test.png
$ ls -al ${RAMDISK_PATH}/test.png
-rw-r--r--@ 1 jerry  staff  1873707 Dec  7 13:16 /Volumes/ramdisk/test.png
```

### Cleanup

```
$ ./teardown.sh
Name is ramdisk
Destroying ramdisk /dev/disk2
"disk2" ejected.
```
