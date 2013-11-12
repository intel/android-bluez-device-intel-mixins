# Disable all implementations of USB Video Class (UVC) camera support.
INTEL_USE_CAMERA_UVC := false
USE_CAMERA_USB := false

# Disable kernel drivers for UVC.
TARGET_KERNEL_CONFIG_OVERRIDES += device/intel/mixins/camera-usb/none/kernel_defconfig_overlay
