ifeq ($(WPA_SUPPLICANT_VERSION),VER_2_1_DEVEL_WCS)
ifndef PRIVATE_WPA_SUPPLICANT_CONF
  WIFI_DRIVER_SOCKET_IFACE := wlan0
  include vendor/intel/hardware/PRIVATE/wlan/hostap_wcs/wpa_supplicant/wpa_supplicant_conf.mk
endif
endif
