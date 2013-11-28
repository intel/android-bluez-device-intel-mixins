# Audio codec support
PRODUCT_COPY_FILES += \
	$(call get-mixin-basedir,audio)/audio_policy.conf:system/vendor/etc/audio_policy.conf \
	$(call get-mixin-basedir,audio)/mixer_paths_Analog_Devices.xml:system/etc/mixer_paths_Analog_Devices.xml \
	$(call get-mixin-basedir,audio)/mixer_paths_unknown.xml:system/etc/mixer_paths_unknown.xml \
	$(call get-mixin-basedir,audio)/mixer_paths_ALC262.xml:system/etc/mixer_paths_ALC262.xml

# Tinyalsa
PRODUCT_PACKAGES += \
	tinymix \
	tinyplay \
	tinycap \

# Audio support
PRODUCT_PACKAGES += \
	audio.primary.$(TARGET_PRODUCT) \
