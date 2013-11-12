# Enable USB camera support. This is the libcamerausb implementation.
USE_CAMERA_USB := true

# Enable kernel drivers for UVC.
TARGET_KERNEL_CONFIG_OVERRIDES += device/intel/mixins/camera-usb/usb/kernel_defconfig_overlay

