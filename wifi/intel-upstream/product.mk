PRODUCT_COPY_FILES += \
        frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
        device/intel/mixins/wifi/intel-upstream/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \

# Override WiFi related configs
TARGET_KERNEL_CONFIG_OVERRIDES += device/intel/mixins/wifi/intel-upstream/kernel_defconfig_overlay

# include firmware binaries for Wifi adapters
$(call inherit-product-if-exists, vendor/intel/fw/wifi/iwlwifi/iwlwifi.mk)
