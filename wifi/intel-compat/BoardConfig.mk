# For wifi
include vendor/intel/wifi/wifi.mk

# Set to use WCS supplicant version
WPA_SUPPLICANT_VERSION := VER_2_1_DEVEL_WCS

#Do not reload firmware when enabling SoftAP
NO_FW_RELOAD_FOR_SOFTAP := true

BOARD_USING_INTEL_IWL := true
INTEL_IWL_BOARD_CONFIG := iwlwifi-public-android
INTEL_IWL_USE_COMPAT_INSTALL := y
INTEL_IWL_EDIT_MOD_DEP := y
INTEL_IWL_COMPAT_INSTALL_DIR := updates
INTEL_IWL_PRODUCT_OUT := $(OUT_DIR)/target/product/$(TARGET_PRODUCT)
KERNEL_OUT_DIR := $(INTEL_IWL_PRODUCT_OUT)/obj/kernel
INTEL_IWL_COMPAT_INSTALL_PATH := $(ANDROID_BUILD_TOP)/$(INTEL_IWL_PRODUCT_OUT)/obj/kernelmods
