#Platform
AUDIO_HAL := audio_mobile
AUDIO_PLATFORM := byt_alc262
BOARD_USES_TINY_ALSA_AUDIO := true
BOARD_USES_AUDIO_HAL_CONFIGURABLE := true
BOARD_USE_VIBRATOR := true
BUILD_WITH_ALSA_UTILS := true
BOARD_USES_GENERIC_AUDIO := false

# enabled to use Intel audio SRC (sample rate conversion)
USE_INTEL_SRC := true

# enabled to use ALAC
USE_FEATURE_ALAC := true

# Settings for the Media SDK library and plug-ins:
# - USE_MEDIASDK: use Media SDK support or not
# - MFX_IPP: sets IPP library optimization to use
USE_MEDIASDK := true
# Enable CIP Codecs
USE_INTEL_MDP := true
MFX_IPP := p8
USE_INTEL_IPP ?= true

#Overlay
DEVICE_PACKAGE_OVERLAYS += device/intel/mixins/audio/byt_alc262/overlay
