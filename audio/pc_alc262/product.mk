# Audio codec support
PRODUCT_COPY_FILES += \
	device/intel/mixins/audio/pc_alc262/audio_policy.conf:system/vendor/etc/audio_policy.conf \
	device/intel/mixins/audio/pc_alc262/mixer_paths_Analog_Devices.xml:system/etc/mixer_paths_Analog_Devices.xml \
	device/intel/mixins/audio/pc_alc262/mixer_paths_unknown.xml:system/etc/mixer_paths_unknown.xml \
	device/intel/mixins/audio/pc_alc262/mixer_paths_ALC262.xml:system/etc/mixer_paths_ALC262.xml

# Tinyalsa
PRODUCT_PACKAGES += \
	tinymix \
	tinyplay \
	tinycap \

# Audio support
PRODUCT_PACKAGES += \
	audio.primary.$(TARGET_PRODUCT) \
