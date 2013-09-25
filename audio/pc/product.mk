PRODUCT_COPY_FILES += \
	device/intel/mixins/audio/pc/audio_policy.conf:system/vendor/etc/audio_policy.conf \
	device/intel/mixins/audio/pc/mixer_paths_Realtek.xml:system/etc/mixer_paths_Realtek.xml \
	device/intel/mixins/audio/pc/mixer_paths_Analog_Devices.xml:system/etc/mixer_paths_Analog_Devices.xml \
	device/intel/mixins/audio/pc/mixer_paths_unknown.xml:system/etc/mixer_paths_unknown.xml \

# Tinyalsa
PRODUCT_PACKAGES += \
	tinymix \
	tinyplay \
	tinycap \

# audio support
PRODUCT_PACKAGES += \
	audio.primary.$(TARGET_PRODUCT) \
