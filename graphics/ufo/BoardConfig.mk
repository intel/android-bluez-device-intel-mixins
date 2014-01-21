# We use '=' since $(TARGET_ARCH_VARIANT) isn't set until later
BOARD_KERNEL_CMDLINE += vga=current i915.modeset=1 drm.vblankoffdelay=1
BOARD_EGL_CFG = vendor/intel/hardware/PRIVATE/ufo/egl.cfg
USE_OPENGL_RENDERER := true
USE_INTEL_UFO_DRIVER := true

ADDITIONAL_DEFAULT_PROPERTIES += \
		persist.intel.ogl.username=Developer \
		persist.intel.ogl.debug=/data/ufo.prop \
		persist.intel.ogl.dumpdebugvars=1 \

#Intel library for GPU accelerated Renderscript:
INT1533_PLATFORMS := baytrail haswell
ifneq ($(filter $(INT1533_PLATFORMS),$(TARGET_BOARD_PLATFORM)),)
    OVERRIDE_RS_DRIVER := libRSDriver_intel7.so
else
    OVERRIDE_RS_DRIVER := libRSDriver_intel.so
endif

RSGPU_ENABLED := baytrail haswell
ifneq ($(filter $(RSGPU_ENABLED),$(TARGET_BOARD_PLATFORM)),)
    # Enable Intel proprietary RS driver
    ADDITIONAL_BUILD_PROPERTIES += \
        debug.rs.default-CPU-driver=0
else
    # Disable Intel proprietary RS driver, till it's stable
    ADDITIONAL_BUILD_PROPERTIES += \
        debug.rs.default-CPU-driver=1
endif

ADDITIONAL_DEFAULT_PROPERTIES += ro.ufo.use_coreu=1

ifneq ($(filter haswell,$(TARGET_BOARD_PLATFORM)),)
ADDITIONAL_DEFAULT_PROPERTIES += ro.ufo.use_curd=1
endif

NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# By default recovery minui expects RGBA framebuffer
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"

