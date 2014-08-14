#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 10016768 0af834643441f54dfddfcf619ba09e09ba9a7b21 7675904 e7a2c2834990559d9af0159e2fa1e3866a021611
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:10016768:0af834643441f54dfddfcf619ba09e09ba9a7b21; then
  log -t recovery "Installing new recovery image"
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:7675904:e7a2c2834990559d9af0159e2fa1e3866a021611 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 0af834643441f54dfddfcf619ba09e09ba9a7b21 10016768 e7a2c2834990559d9af0159e2fa1e3866a021611:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
