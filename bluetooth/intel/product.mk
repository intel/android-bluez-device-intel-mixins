BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_IBT := true
BOARD_HAVE_BLUETOOTH_BCM := false
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/intel/mixins/bluetooth/intel/buildcfg_include
BLUETOOTH_HCI_USE_USB := true

# Firmware patch-file
PRODUCT_COPY_FILES += \
	vendor/intel/hardware/bluetooth/fw/370710018002030d2a.seq:system/etc/firmware/370710018002030d00.seq \
	vendor/intel/hardware/bluetooth/fw/370710018002030d2a.seq:system/etc/firmware/370710018002030d2a.seq \
	frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml

# Disable kernel BT-drivers
TARGET_KERNEL_CONFIG_OVERRIDES += device/intel/mixins/bluetooth/intel/kernel_defconfig_overlay

# Bluetooth config
PRODUCT_PACKAGES += \
         hciconfig


