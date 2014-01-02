# Disable i915 in the kernel; force TMPFS support on
TARGET_KERNEL_CONFIG_OVERRIDES += device/intel/mixins/graphics/software/kernel_defconfig_overlay
