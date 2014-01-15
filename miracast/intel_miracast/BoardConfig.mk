#Enable Mircast support
INTEL_WIDI := true
INTEL_WIDI_GEN := true
INTEL_WIDI_MEDIASDK_ENCODER := true
INTEL_WIDI_BAYTRAIL := true

#Overlay for enabling WifiDisplay
DEVICE_PACKAGE_OVERLAYS += device/intel/mixins/miracast/intel_miracast/overlay
