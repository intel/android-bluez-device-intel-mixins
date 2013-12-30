BOARD_KERNEL_CMDLINE += vga=current nomodeset

TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"

# for gralloc.default
# Intel Graphics has framebuffer in BGR instead of RGB
# but efifb still reports RGB. So we need to force it.
TARGET_GRALLOC_FORCE_EFIFB_PIXEL_FORMAT := "BGRA"
