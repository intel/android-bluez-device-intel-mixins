BOARD_USE_LIBVA_INTEL_DRIVER := true
BOARD_USE_LIBVA := true
BOARD_USE_LIBMIX := true
USE_HW_VP8 := true

# enable build of VXD392 kernel module
USE_PVR_VIDEO := true

# Add needed CONFIGs
TARGET_KERNEL_CONFIG_OVERRIDES += device/intel/mixins/video-img/vxd392/kernel_defconfig_overlay
