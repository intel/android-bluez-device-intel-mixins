AUDIO_HAL := audio_pc
DEVICE_PACKAGE_OVERLAYS += $(call get-mixin-basedir,audio)/overlay

#MDP
USE_INTEL_MDP = true
#IPP
USE_INTEL_IPP = true
