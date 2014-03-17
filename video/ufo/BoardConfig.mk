INTEL_VA := false
USE_INTEL_VA := false
BOARD_USES_WRS_OMXIL_CORE := false
BOARD_USES_MRST_OMX := false

# enabled to use hardware VP8 decoder
# TODO: disbled as it doesn't build on haswell
USE_HW_VP8 := false

# Settings for the Media SDK library and plug-ins:
# - USE_MEDIASDK: use Media SDK support or not
# - MFX_IPP: sets IPP library optimization to use
USE_MEDIASDK := false
MFX_IPP := p8

BUILD_WITH_FULL_STAGEFRIGHT := false

# Disable Intel proprietary RS driver, till it's stable
ADDITIONAL_BUILD_PROPERTIES += \
		debug.rs.default-CPU-driver=1

