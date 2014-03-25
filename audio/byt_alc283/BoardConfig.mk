#Platform
AUDIO_HAL := audio_pc
AUDIO_PLATFORM := byt_alc283
BOARD_USES_TINY_ALSA_AUDIO := true
BOARD_USES_AUDIO_HAL_CONFIGURABLE := false
BOARD_USE_VIBRATOR := false
BUILD_WITH_ALSA_UTILS := true
BOARD_USES_GENERIC_AUDIO := false

# enabled to use Intel audio SRC (sample rate conversion)
USE_INTEL_SRC := false

# enabled to use ALAC
USE_FEATURE_ALAC := true

# Settings for the Media SDK library and plug-ins:
# - USE_MEDIASDK: use Media SDK support or not
# - MFX_IPP: sets IPP library optimization to use
USE_MEDIASDK := true
# Enable CIP Codecs
USE_INTEL_MDP := false
MFX_IPP := p8
USE_INTEL_IPP ?= false

#Overlay
DEVICE_PACKAGE_OVERLAYS += device/intel/mixins/audio/byt_alc283/overlay
