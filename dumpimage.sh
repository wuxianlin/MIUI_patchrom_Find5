adb shell dd if=/dev/block/platform/msm_sdcc.1/by-name/boot of=/tmp/boot.img
adb pull /tmp/boot.img $1
adb shell rm /tmp/boot.img
