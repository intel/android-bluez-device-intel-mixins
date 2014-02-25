PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
        frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml

# Bluetooth config
PRODUCT_PACKAGES += \
         hciconfig

$(call inherit-product-if-exists,vendor/intel/hardware/bluetooth/fw/btfw.mk)

