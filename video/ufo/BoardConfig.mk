INTEL_VA := true
USE_INTEL_VA := true
BOARD_USES_WRS_OMXIL_CORE := true
BOARD_USES_MRST_OMX := true
USE_INTEL_ASF_EXTRACTOR := true
# enabled to use hardware VP8 decoder
# TODO: disbled as it doesn't build on haswell
USE_HW_VP8 := false

# Settings for the Media SDK library and plug-ins:
# - USE_MEDIASDK: use Media SDK support or not
# - MFX_IPP: sets IPP library optimization to use
USE_MEDIASDK := true
MFX_IPP := p8

BUILD_WITH_FULL_STAGEFRIGHT := true

# Disable Intel proprietary RS driver, till it's stable
ADDITIONAL_BUILD_PROPERTIES += \
		debug.rs.default-CPU-driver=1

ifneq ($(filter baytrail,$(TARGET_BOARD_PLATFORM)),)
ADDITIONAL_DEFAULT_PROPERTIES += ro.ufo.use_coreu=1
endif

