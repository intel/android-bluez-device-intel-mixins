BOARD_HAVE_BLUETOOTH := true

TARGET_KERNEL_CONFIG_OVERRIDES += device/intel/mixins/bluetooth/bluez/kernel_defconfig_overlay

$(call inherit-product-if-exists, vendor/intel/hardware/bluetooth/fw/intel.mk)
