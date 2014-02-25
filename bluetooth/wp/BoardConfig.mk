DEVICE_PACKAGE_OVERLAYS += device/intel/mixins/bluetooth/wp/overlay

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_IBT := true
BOARD_HAVE_BLUETOOTH_BCM := false
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/intel/mixins/bluetooth/wp/buildcfg_include
BLUETOOTH_HCI_USE_USB := true

# Disable kernel BT-drivers
TARGET_KERNEL_CONFIG_OVERRIDES += device/intel/mixins/bluetooth/wp/kernel_defconfig_overlay


