FRAMEWORK_ETC_PATH := frameworks/native/data/etc
PERMISSIONS_PATH := system/etc/permissions

PRODUCT_COPY_FILES += \
	$(FRAMEWORK_ETC_PATH)/android.hardware.touchscreen.xml:$(PERMISSIONS_PATH)/android.hardware.touchscreen.xml \
	$(FRAMEWORK_ETC_PATH)/android.hardware.touchscreen.multitouch.xml:s$(PERMISSIONS_PATH)/android.hardware.touchscreen.multitouch.xml \
	$(FRAMEWORK_ETC_PATH)/android.hardware.touchscreen.multitouch.jazzhand.xml:$(PERMISSIONS_PATH)/android.hardware.touchscreen.multitouch.jazzhand.xml \
	device/intel/mixins/touch/max_1664S_8/maxtouch.cfg:system/etc/firmware/maxtouch.cfg \
	device/intel/mixins/touch/max_1664S_8/maxtouch_1664S_8.fw:system/etc/firmware/maxtouch.fw \
	device/intel/mixins/touch/max_1664S_8/atmel_mxt_ts.idc:system/usr/idc/atmel_mxt_ts.idc

