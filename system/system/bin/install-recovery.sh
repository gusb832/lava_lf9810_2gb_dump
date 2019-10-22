#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:33554432:8939e036ab734fa58ca93d86540506b3a3ce2e90; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:33554432:8f5841b6185659b3b6d2da377613d52533c7cee2 EMMC:/dev/block/platform/bootdevice/by-name/recovery 8939e036ab734fa58ca93d86540506b3a3ce2e90 33554432 8f5841b6185659b3b6d2da377613d52533c7cee2:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
