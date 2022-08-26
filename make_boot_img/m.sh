#abootimg --create myboot.img -f bootimg.cfg -k ../out/arch/arm64/boot/Image.gz-dtb -r initrd.img
export TOOLS=/home/bird/work/agnos-builder/tools/
$TOOLS/mkbootimg \
  --kernel Image.gz-dtb \
  --ramdisk /dev/null \
  --cmdline "androidboot.selinux=permissive androidboot.hardware=qcom androidboot.console=ttyMSM0 video=vfb:640x400,bpp=32,memsize=3072000 msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 service_locator.enable=1 swiotlb=2048 androidboot.configfs=true androidboot.usbcontroller=a600000.dwc3 firmware_class.path=/vendor/firmware_mnt/image loop.max_part=7 init=/lib/systemd/systemd" \
  --pagesize 4096 \
  --base 0x80000000 \
  --kernel_offset 0x8000 \
  --ramdisk_offset 0x8000 \
  --tags_offset 0x100 \
  --output myboot.img.nonsecure
