BOARD_KERNEL_CMDLINE += vga=current i915.modeset=1 drm.vblankoffdelay=1 \

ifneq ($(TARGET_BUILD_VARIANT),eng)
    BOARD_KERNEL_CMDLINE += quiet vt.init_hide=1
endif

BOARD_USE_LIBVA_INTEL_DRIVER := true
BOARD_USE_LIBVA := true
BOARD_USE_LIBMIX := true

TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"

BOARD_USES_WRS_OMXIL_CORE := true
USE_INTEL_OMX_COMPONENTS := true

NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# Using Mesa
BOARD_USE_MESA := true
BOARD_EGL_CFG := device/intel/mixins/graphics/mesa/egl.cfg
BOARD_GPU_DRIVERS := i965
USE_OPENGL_RENDERER := true

