# For wifi
include vendor/intel/wifi/wifi.mk

# Set to use WCS supplicant version
WPA_SUPPLICANT_VERSION := VER_2_1_DEVEL_WCS
BOARD_WLAN_DEVICE := intc

#Do not reload firmware when enabling SoftAP
NO_FW_RELOAD_FOR_SOFTAP := true
