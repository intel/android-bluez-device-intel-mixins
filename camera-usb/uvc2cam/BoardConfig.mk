# Enable USB Video Class (UVC) camera support.
# This is the libcamerauvc implementation.
INTEL_USE_CAMERA_UVC := true

# Enable kernel drivers for UVC.
TARGET_KERNEL_CONFIG_OVERRIDES += device/intel/mixins/camera-usb/uvc/kernel_defconfig_overlay

