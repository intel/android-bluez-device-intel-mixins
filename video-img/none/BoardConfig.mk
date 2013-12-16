BOARD_USE_LIBVA_INTEL_DRIVER := false
BOARD_USE_LIBVA := false
BOARD_USE_LIBMIX := false
USE_HW_VP8 := false
# disable build of VXD392 kernel module
USE_PVR_VIDEO := false

TARGET_KERNEL_CONFIG_OVERRIDES += device/intel/mixins/video-img/none/kernel_defconfig_overlay