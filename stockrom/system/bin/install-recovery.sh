#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 9684992 d78d34535e0e62d032f30ad3e1d54fa85a5208db 7000064 fb684f4a00a57f88039a424a6cecfc2e286970ca
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:9684992:d78d34535e0e62d032f30ad3e1d54fa85a5208db; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:7000064:fb684f4a00a57f88039a424a6cecfc2e286970ca EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery d78d34535e0e62d032f30ad3e1d54fa85a5208db 9684992 fb684f4a00a57f88039a424a6cecfc2e286970ca:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
