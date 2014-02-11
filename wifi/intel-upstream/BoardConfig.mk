# For wifi
BOARD_CUSTOM_WIFI_HAL_SRC := hardware/intel/wifi/wifi.c
ADDITIONAL_DEFAULT_PROPERTIES += wifi.interface=wlan0

# Must be set to enable WPA supplicant build. WEXT is the driver for generic
# linux wireless extensions. NL80211 supercedes it.
# This variable is used by external/wpa_supplicant/Android.mk
BOARD_WPA_SUPPLICANT_DRIVER=NL80211

# Set to use WCS supplicant version
WPA_SUPPLICANT_VERSION := VER_2_1_DEVEL_WCS
BOARD_WLAN_DEVICE := intc

#Do not reload firmware when enabling SoftAP
NO_FW_RELOAD_FOR_SOFTAP := true
