#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 10403840 ca11ebd207e56e8d8989f49dcc057d4f25bd2875 8921088 ea8ac5bbec93b7fb0fca7c734856571ad61c6fa0
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:10403840:ca11ebd207e56e8d8989f49dcc057d4f25bd2875; then
  log -t recovery "Installing new recovery image"
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:8921088:ea8ac5bbec93b7fb0fca7c734856571ad61c6fa0 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery ca11ebd207e56e8d8989f49dcc057d4f25bd2875 10403840 ea8ac5bbec93b7fb0fca7c734856571ad61c6fa0:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
