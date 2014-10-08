#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 10029056 f15f9db0d18fbc3fa533623f7009aee3e9fd164d 7688192 3b8c2e874658d4740e2c1b1e7c55b7dea25f6e2b
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:10029056:f15f9db0d18fbc3fa533623f7009aee3e9fd164d; then
  log -t recovery "Installing new recovery image"
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:7688192:3b8c2e874658d4740e2c1b1e7c55b7dea25f6e2b EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery f15f9db0d18fbc3fa533623f7009aee3e9fd164d 10029056 3b8c2e874658d4740e2c1b1e7c55b7dea25f6e2b:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
