PRODUCT_COPY_FILES += \
        frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
        frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
        device/intel/mixins/wifi/intel-compat/p2p_supplicant.conf:system/etc/wifi/p2p_supplicant.conf \

# Override WiFi related configs
TARGET_KERNEL_CONFIG_OVERRIDES += device/intel/mixins/wifi/intel-compat/kernel_defconfig_overlay

# include firmware binaries for Wifi adapters
$(call inherit-product-if-exists, vendor/intel/hardware/PRIVATE/wlan/iwl-firmware/iwlwifi.mk)

PRODUCT_PROPERTY_OVERRIDES += \
        wifi.interface=wlan0
