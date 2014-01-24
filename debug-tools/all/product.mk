# If this a debugging build include the public debug modules
ifneq ($(filter eng userdebug,$(TARGET_BUILD_VARIANT)),)
	PRODUCT_PACKAGES += pax sep3_10 vtsspp socwatch1_3_external
endif
