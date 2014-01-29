# Touch USB HID support

FRAMEWORK_ETC_PATH := frameworks/native/data/etc
PERMISSIONS_PATH := system/etc/permissions

PRODUCT_COPY_FILES += \
	$(FRAMEWORK_ETC_PATH)/android.hardware.touchscreen.xml:$(PERMISSIONS_PATH)/android.hardware.touchscreen.xml \
	$(FRAMEWORK_ETC_PATH)/android.hardware.touchscreen.multitouch.xml:$(PERMISSIONS_PATH)/android.hardware.touchscreen.multitouch.xml \
	$(FRAMEWORK_ETC_PATH)/android.hardware.touchscreen.multitouch.jazzhand.xml:$(PERMISSIONS_PATH)/android.hardware.touchscreen.multitouch.jazzhand.xml \
	device/intel/mixins/touch/usb_hid/Vendor_03eb_Product_2136.idc:system/usr/idc/Vendor_03eb_Product_2136.idc

TARGET_KERNEL_CONFIG_OVERRIDES += device/intel/mixins/touch/usb_hid/kernel_defconfig_overlay

