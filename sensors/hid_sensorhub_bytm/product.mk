# sensor support
PRODUCT_PACKAGES += \
        sensors.$(TARGET_PRODUCT)

TARGET_KERNEL_CONFIG_OVERRIDES += device/intel/mixins/sensors/hid_sensorhub_bytm/kernel_defconfig_overlay

PRODUCT_COPY_FILES += \
        frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
        frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
        frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
        frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml

