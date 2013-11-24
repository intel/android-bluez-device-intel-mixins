PRODUCT_COPY_FILES += \
        frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
        device/intel/mixins/wifi/intel-compat/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \

# include firmware binaries for Wifi adapters
$(call inherit-product-if-exists, vendor/intel/hardware/PRIVATE/wlan/iwl-firmware/iwlwifi.mk)
