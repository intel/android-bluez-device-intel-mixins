PRODUCT_CHARACTERISTICS := tablet

ADDITIONAL_DEFAULT_PROPERTIES += fw.max_users=10

PRODUCT_COPY_FILES += \
        frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
        frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

PRODUCT_PROPERTY_OVERRIDES += ro.ignore_atkbd=1
