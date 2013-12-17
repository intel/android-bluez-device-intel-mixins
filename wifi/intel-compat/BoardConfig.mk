# For wifi
include vendor/intel/wifi/wifi.mk

# Set to use WCS supplicant version
WPA_SUPPLICANT_VERSION := VER_2_1_DEVEL_WCS

#Do not reload firmware when enabling SoftAP
NO_FW_RELOAD_FOR_SOFTAP := true

BOARD_USING_INTEL_IWL := true
INTEL_IWL_BOARD_CONFIG := iwlwifi-public-android
INTEL_IWL_USE_SYSTEM_COMPAT_MOD_BUILD := y
