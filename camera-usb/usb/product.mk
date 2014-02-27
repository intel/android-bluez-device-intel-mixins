PRODUCT_PACKAGES += \
	camera.$(TARGET_PRODUCT) \

ifneq ($(TARGET_BUILD_VARIANT),user)
	PRODUCT_PACKAGES += CameraLauncher
endif
